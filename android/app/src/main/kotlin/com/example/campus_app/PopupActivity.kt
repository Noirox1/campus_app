package de.asta_bochum.campus_app

import androidx.appcompat.app.AppCompatActivity
import de.asta_bochum.campus_app.R
import android.widget.TextView
import android.widget.LinearLayout
import androidx.appcompat.widget.Toolbar
import android.content.res.Configuration
import android.graphics.Color
import android.os.Bundle
import android.content.*
import android.nfc.NfcAdapter
import android.nfc.NfcAdapter.*
import android.nfc.Tag
import android.nfc.tech.*
import android.app.*

class PopupActivity : AppCompatActivity() {

    // Function extends the Byte class to convert a byte to a hex string
    fun Byte.toHexString(): String {
        val HEX_CHARS = "0123456789ABCDEF"
        val HEX_CHARS_ARRAY = HEX_CHARS.toCharArray()
        val octet = this.toInt()
        val firstIndex = (octet and 0xF0) ushr 4
        val secondIndex = octet and 0x0F

        return "${HEX_CHARS_ARRAY[firstIndex]}${HEX_CHARS_ARRAY[secondIndex]}"
    }

    // Adds the transceive method to each TagTechnology class
    fun TagTechnology.transceive(data: ByteArray, timeout: Int?): ByteArray {
        val transceiveMethod = this.javaClass.getMethod("transceive", ByteArray::class.java)
        return transceiveMethod.invoke(this, data) as ByteArray
    }

    // Converts a ByteArray to an integer by shifting the bytes one by one into an int
    fun littleEndianConversion(bytes: ByteArray): Int {
        var result = 0
        for (i in bytes.indices) {
            result = result or (bytes[i].toInt() shl ((bytes.lastIndex - i) * 8))
            }
        return result
    }

    // Converts an array of unsigned integer to an integer. Works just like the littleEndianConversion function
    fun littleEndianConversionUInt(ints: UIntArray): UInt {
        var result: UInt = 0U
        for (i in ints.indices) {
            result = result or (ints[i] shl ((ints.lastIndex - i) * 8))
        }
        return result
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // Set the content view to the popup layout
        setContentView(R.layout.popup)

        // Get all widgets 
        val title: TextView = findViewById(R.id.popup_title)
        val tv1: TextView = findViewById(R.id.current)
        val tv2: TextView = findViewById(R.id.last)
        val toolbar: Toolbar = findViewById(R.id.toolbar)
        val layout: LinearLayout = findViewById(R.id.popupRoot)

        // Change the colors of the layout depending on the system darkmode setting
        val currentNightMode = resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK
        when (currentNightMode) {
            Configuration.UI_MODE_NIGHT_NO -> {
                layout.setBackgroundColor(Color.WHITE)
                toolbar.setBackgroundColor(Color.rgb(245, 246, 250))
                title.setTextColor(Color.BLACK)
                tv1.setTextColor(Color.BLACK)
                tv2.setTextColor(Color.BLACK)
            } // Night mode is not active, we're using the light theme
            Configuration.UI_MODE_NIGHT_YES -> {
                layout.setBackgroundColor(Color.rgb(14, 20, 32))
                toolbar.setBackgroundColor(Color.rgb(17, 25, 38))
                title.setTextColor(Color.WHITE)
                tv1.setTextColor(Color.WHITE)
                tv2.setTextColor(Color.WHITE)
            } // Night mode is active, we're using dark theme
        }

        // Check whether the app was started by the ACTION_TECH_DISCOVERED intent
        if(NfcAdapter.ACTION_TECH_DISCOVERED == intent.action) {
            // Get the Tag object from the intent
            val tag: Tag? = intent.getParcelableExtra(NfcAdapter.EXTRA_TAG)

            if(tag != null) {
                // Check whether the tag is compatible 
                if(tag.techList.contains(IsoDep::class.java.name)) {
                    try {
                        // Initialise the tag technology to transceive to the mensa card
                        val isoDep = IsoDep.get(tag)

                        // Connect to the tag
                        isoDep.connect()

                        // Select the application file 
                        val appBytes = byteArrayOf(0x90.toByte(), 0x5A.toByte(), 0x00.toByte(), 0x00.toByte(), 3.toByte(), 95.toByte(), 132.toByte(), 21.toByte(), 0x00.toByte())
                        isoDep.transceive(appBytes, null)

                        // Get the last transcation file
                        val transactionBytes = byteArrayOf(0x90.toByte(), 0xF5.toByte(), 0x00.toByte(), 0x00.toByte(), 1.toByte(), 1.toByte(), 0x00.toByte())
                        val transactionFile = isoDep.transceive(transactionBytes, null)

                        // Get the value of the mensa card 
                        val valueBytes = byteArrayOf(0x90.toByte(), 0x6C.toByte(), 0x00.toByte(), 0x00.toByte(), 1.toByte(), 1.toByte(), 0x00.toByte())
                        val valueResult = isoDep.transceive(valueBytes, null).reversed()

                        // Extract 4 bytes at index 4 onwards responsible for indicating the value of the mensa card 
                        val valuePartList = mutableListOf<Byte>()
                        for(i in 4..valueResult.lastIndex) {
                            valuePartList.add(valueResult[i])
                        }

                        // Extract 4 bytes at index 12 to 15 that represent the last transaction of the mensa card
                        val transactionPartList = mutableListOf<UInt>()
                        for(i in 12..15) {
                            transactionPartList.add(transactionFile[i].toHexString().toUInt(16))
                        }

                        // Convert the extracted bytes to an integer
                        val mensaCardValue = littleEndianConversion(valuePartList.toByteArray())
                        val lastTransaction = littleEndianConversionUInt(transactionPartList.reversed().toUIntArray())

                        // Display the transceived values divided by 1000 to get the float representation of the integer
                        tv1.text = "Guthaben: " + (mensaCardValue.toFloat() / 1000).toString() + " €"
                        tv2.text = "Letzte Abbuchung: -" + (lastTransaction.toFloat() / 1000).toString() + " €"

                        // Close the connection
                        isoDep.close()
                    } catch(ex: Exception){
                        // Displayed if the card was removed while an ongoing operation or if it's not supported
                        tv1.text = "Fehler beim Scannen"
                        tv2.text = ""
                    }
                }
            }
        }
    }
}