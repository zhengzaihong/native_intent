package com.zzh.intent.flutter_intent_forzzh

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Bundle
import android.content.ComponentName
import android.text.TextUtils
import android.util.Log

/**
* create_user: zhengzaihong
* email:1096877329@qq.com
* create_date: 2023/3/31
* create_time: 14:22
* describe: 此类用于意图的发起，传递给Android原生
 * 跳转 activity,service broadcast...等
*/
class IntentLauncher(private var activity: Activity?, private var applicationContext: Context?) {


    companion object {
        private const val TAG = "IntentLauncher"
    }


     fun launcher(intent: Intent) {
        if (!checkContext()){
            return
        }
        Log.v(TAG, "开始启动： $intent")
        if (activity != null) {
            activity?.startActivity(intent)
        } else {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            applicationContext?.startActivity(intent)
        }
    }

    /**
     * 可以妙用系统提供的 createChooser 创建一个带有标题的视图弹窗等..
     */
    fun launchChooser(intent: Intent?, title: String?) {
        launcher(Intent.createChooser(intent, title))
    }

    /**
     * 通过包名启动程序 activity，像：com.hx.docap
     */
    fun canResolveActivity(intent: Intent?): Boolean {
        if (!checkContext()){
            return false
        }
        val packageManager = applicationContext!!.packageManager
        return packageManager.resolveActivity(intent!!, PackageManager.MATCH_DEFAULT_ONLY) != null
    }

    fun setActivity(activity: Activity?) {
        this.activity = activity
    }

    fun setApplicationContext(applicationContext: Context?) {
        this.applicationContext = applicationContext
    }


    /**
     * @param action [Intent.ACTION_VIEW].
     * @param flags  [Intent.addFlags]
     * @param category [Intent.addCategory]
     * @param data [Intent.setData]  [     ][Intent.setDataAndType]
     * @param arguments [Intent.putExtras]
     * @param packageName  [Intent.setPackage]
     * @param componentName [Intent.setComponent]
     * @param type  [Intent.setType]  [     ][Intent.setDataAndType]
     *
     * @return new Intent.
     */

    fun buildIntent(
        action: String?,
        flags: Int?,
        category: String?,
        data: Uri?,
        arguments: Bundle?,
        packageName: String?,
        componentName: ComponentName?,
        type: String?
    ): Intent? {
        if (!checkContext()){
            return null
        }

        val intent = Intent()
        if (action != null) {
            intent.action = action
        }
        if (flags != null) {
            intent.addFlags(flags)
        }
        if (!TextUtils.isEmpty(category)) {
            intent.addCategory(category)
        }
        if (data != null && type == null) {
            intent.data = data
        }
        if (type != null && data == null) {
            intent.type = type
        }
        if (type != null && data != null) {
            intent.setDataAndType(data, type)
        }
        if (arguments != null) {
            intent.putExtras(arguments)
        }
        if (!TextUtils.isEmpty(packageName)) {
            intent.setPackage(packageName)
            if (componentName != null) {
                intent.component = componentName
            }
        }
        return intent
    }

    private fun checkContext():Boolean{
        if (applicationContext == null) {
            Log.wtf(TAG, "上下文未初始化，请先初始化")
            return false
        }
        return true
    }
}