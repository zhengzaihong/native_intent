package com.zzh.intent.flutter_intent_forzzh
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import android.net.Uri
import android.os.Bundle
import android.content.ComponentName
import android.text.TextUtils
import android.util.Log
import java.util.ArrayList
import java.lang.UnsupportedOperationException
import java.lang.Class

/**
* create_user: zhengzaihong
* email:1096877329@qq.com
* create_date: 2023/3/31
* create_time: 13:51
* describe: 原生通道消息处理
*/
class MethodCallHandlerImpl(private val intentLauncher: IntentLauncher) : MethodCallHandler {

    private var methodChannel: MethodChannel? = null

   open fun startListening(messenger: BinaryMessenger?) {

        messenger?.let {
            if (methodChannel != null) {
                Log.wtf(TAG, "销毁上一次数据通道，马上建立新数据通道")
                stopListening()
            }
            methodChannel = MethodChannel(it, methodChannelName)
            methodChannel?.setMethodCallHandler(this)
            Log.wtf(TAG, "新数据通道创建完毕！")
        }
    }


   open fun stopListening() {
        if (methodChannel == null) {
            return
        }
        methodChannel?.setMethodCallHandler(null)
        methodChannel = null
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {

        call.run {

            val action = argument<String?>("action")
            val flags = argument("flags") as Int?
            val category = argument<String?>("category")
            val dataTemp = argument<String?>("data")
            var data:Uri? = null

            dataTemp?.let {
                data = Uri.parse(argument<String>("data"))
            }

            val arguments = convertArguments(argument<Map<String, *>?>("arguments") )
            val arrayArguments = convertArrayArguments(argument<Map<String, *>?>("arrayArguments"))

            arguments.putAll(arrayArguments)

            val packageName = argument<String>("package")
            val component = argument<Any>("componentName") as String?
            val componentName = if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(component)) ComponentName(packageName!!, component!!) else null
            val type = argument<String>("type")

            //构建意图
            val intent = intentLauncher.buildIntent(action, flags, category, data, arguments, packageName, componentName, type)

            when {

                "launch".equals(call.method, ignoreCase = true) -> {

                    intent?.let {
                        if (!intentLauncher.canResolveActivity(it)) {
                            Log.i(TAG, "显示意图启动失败，即将尝试隐私意图！")
                            it.setPackage(null)
                        }
                        intentLauncher.launcher(it)
                        result.success(null)
                    }
                }

                "launchChooser".equals(call.method, ignoreCase = true) -> {
                    val title = call.argument<String>("chooserTitle")
                    intentLauncher.launchChooser(intent, title)
                    result.success(null)
                }

                "canResolveActivity".equals(call.method, ignoreCase = true) -> {
                    result.success(intentLauncher.canResolveActivity(intent))
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    companion object {

        const val methodChannelName = "flutter_native_intent"

        private const val TAG = "MethodCallHandlerImpl"

        private fun convertArguments(arguments: Map<String, *>?): Bundle {
            val bundle = Bundle()
            if (arguments == null) {
                return bundle
            }
            for (key in arguments.keys) {
                val value = arguments[key]
                if (value is Int) {
                    bundle.putInt(key, (value as Int?)!!)
                } else if (value is String) {
                    bundle.putString(key, value as String?)
                } else if (value is Boolean) {
                    bundle.putBoolean(key, (value as Boolean?)!!)
                } else if (value is Double) {
                    bundle.putDouble(key, (value as Double?)!!)
                } else if (value is Long) {
                    bundle.putLong(key, (value as Long?)!!)
                } else if (value is ByteArray) {
                    bundle.putByteArray(key, value as ByteArray?)
                } else if (value is IntArray) {
                    bundle.putIntArray(key, value as IntArray?)
                } else if (value is LongArray) {
                    bundle.putLongArray(key, value as LongArray?)
                } else if (value is DoubleArray) {
                    bundle.putDoubleArray(key, value as DoubleArray?)
                } else if (isTypedArrayList(value, Int::class.java)) {
                    bundle.putIntegerArrayList(key, value as ArrayList<Int?>?)
                } else if (isTypedArrayList(value, String::class.java)) {
                    bundle.putStringArrayList(key, value as ArrayList<String?>?)
                } else if (isStringKeyedMap(value)) {
                    bundle.putBundle(key, convertArguments(value as Map<String, *>?))
                } else {
                    throw UnsupportedOperationException("Unsupported type $value")
                }
            }
            return bundle
        }

        private fun convertArrayArguments(arrayArguments: Map<String, *>?): Bundle {
            val bundle = Bundle()
            if (arrayArguments == null) {
                return bundle
            }
            for (key in arrayArguments.keys) {
                val value = arrayArguments[key]
                when {
                    isTypedArrayList(value, Boolean::class.java) -> {
                        val list = value as ArrayList<Boolean>?
                        val array = BooleanArray(list!!.size)
                        for (i in list.indices) {
                            array[i] = list[i]
                        }
                        bundle.putBooleanArray(key, array)
                    }
                    isTypedArrayList(value, Int::class.java) -> {
                        val list = value as ArrayList<Int>?
                        val array = IntArray(list!!.size)
                        for (i in list.indices) {
                            array[i] = list[i]
                        }
                        bundle.putIntArray(key, array)
                    }
                    isTypedArrayList(value, Long::class.java) -> {
                        val list = value as ArrayList<Long>?
                        val array = LongArray(list!!.size)
                        for (i in list.indices) {
                            array[i] = list[i]
                        }
                        bundle.putLongArray(key, array)
                    }
                    isTypedArrayList(value, Double::class.java) -> {
                        val list = value as ArrayList<Double>?
                        val array = DoubleArray(list!!.size)
                        for (i in list.indices) {
                            array[i] = list[i]
                        }
                        bundle.putDoubleArray(key, array)
                    }
                    isTypedArrayList(value, String::class.java) -> {
                        val list = value as ArrayList<String>?
                        bundle.putStringArray(key, list!!.toTypedArray())
                    }
                    else -> {
                        throw UnsupportedOperationException("Unsupported type $value")
                    }
                }
            }
            return bundle
        }

        private fun isTypedArrayList(value: Any?, type: Class<*>): Boolean {
            if (value !is ArrayList<*>) {
                return false
            }
            for (o in value) {
                if (!(o == null || type.isInstance(o))) {
                    return false
                }
            }
            return true
        }

        private fun isStringKeyedMap(value: Any?): Boolean {
            if (value !is Map<*, *>) {
                return false
            }
            for (key in value.keys) {
                if (!(key == null || key is String)) {
                    return false
                }
            }
            return true
        }
    }
}