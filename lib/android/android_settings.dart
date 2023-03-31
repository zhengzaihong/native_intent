///
/// create_user: zhengzaihong
/// email:1096877329@qq.com
/// create_date: 2023/3/31
/// create_time: 14:58
/// describe: android跳转系统设置方面的意图,flutter 使用者请
/// 完全参照Android 原生使用
///

class Settings {

   Settings._();

   static const String ACTION_ACCESSIBILITY_SETTINGS = "android.settings.ACCESSIBILITY_SETTINGS";
   static const String ACTION_ADD_ACCOUNT = "android.settings.ADD_ACCOUNT_SETTINGS";
   static const String ACTION_AIRPLANE_MODE_SETTINGS = "android.settings.AIRPLANE_MODE_SETTINGS";
   static const String ACTION_APN_SETTINGS = "android.settings.APN_SETTINGS";
   static const String ACTION_APPLICATION_DETAILS_SETTINGS = "android.settings.APPLICATION_DETAILS_SETTINGS";
   static const String ACTION_APPLICATION_DEVELOPMENT_SETTINGS = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS";
   static const String ACTION_APPLICATION_SETTINGS = "android.settings.APPLICATION_SETTINGS";
   static const String ACTION_APP_NOTIFICATION_BUBBLE_SETTINGS = "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS";
   static const String ACTION_APP_NOTIFICATION_SETTINGS = "android.settings.APP_NOTIFICATION_SETTINGS";
   static const String ACTION_APP_OPEN_BY_DEFAULT_SETTINGS = "android.settings.APP_OPEN_BY_DEFAULT_SETTINGS";
   static const String ACTION_APP_SEARCH_SETTINGS = "android.settings.APP_SEARCH_SETTINGS";
   static const String ACTION_APP_USAGE_SETTINGS = "android.settings.action.APP_USAGE_SETTINGS";
   static const String ACTION_AUTO_ROTATE_SETTINGS = "android.settings.AUTO_ROTATE_SETTINGS";
   static const String ACTION_BATTERY_SAVER_SETTINGS = "android.settings.BATTERY_SAVER_SETTINGS";
   static const String ACTION_BIOMETRIC_ENROLL = "android.settings.BIOMETRIC_ENROLL";
   static const String ACTION_BLUETOOTH_SETTINGS = "android.settings.BLUETOOTH_SETTINGS";
   static const String ACTION_CAPTIONING_SETTINGS = "android.settings.CAPTIONING_SETTINGS";
   static const String ACTION_CAST_SETTINGS = "android.settings.CAST_SETTINGS";
   static const String ACTION_CHANNEL_NOTIFICATION_SETTINGS = "android.settings.CHANNEL_NOTIFICATION_SETTINGS";
   static const String ACTION_CONDITION_PROVIDER_SETTINGS = "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS";
   static const String ACTION_DATA_ROAMING_SETTINGS = "android.settings.DATA_ROAMING_SETTINGS";
   static const String ACTION_DATA_USAGE_SETTINGS = "android.settings.DATA_USAGE_SETTINGS";
   static const String ACTION_DATE_SETTINGS = "android.settings.DATE_SETTINGS";
   static const String ACTION_DEVICE_INFO_SETTINGS = "android.settings.DEVICE_INFO_SETTINGS";
   static const String ACTION_DISPLAY_SETTINGS = "android.settings.DISPLAY_SETTINGS";
   static const String ACTION_DREAM_SETTINGS = "android.settings.DREAM_SETTINGS";
  /** @deprecated */
   @deprecated
   static const String ACTION_FINGERPRINT_ENROLL = "android.settings.FINGERPRINT_ENROLL";
   static const String ACTION_HARD_KEYBOARD_SETTINGS = "android.settings.HARD_KEYBOARD_SETTINGS";
   static const String ACTION_HOME_SETTINGS = "android.settings.HOME_SETTINGS";
   static const String ACTION_IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS = "android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS";
   static const String ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS = "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS";
   static const String ACTION_INPUT_METHOD_SETTINGS = "android.settings.INPUT_METHOD_SETTINGS";
   static const String ACTION_INPUT_METHOD_SUBTYPE_SETTINGS = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS";
   static const String ACTION_INTERNAL_STORAGE_SETTINGS = "android.settings.INTERNAL_STORAGE_SETTINGS";
   static const String ACTION_LOCALE_SETTINGS = "android.settings.LOCALE_SETTINGS";
   static const String ACTION_LOCATION_SOURCE_SETTINGS = "android.settings.LOCATION_SOURCE_SETTINGS";
   static const String ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS";
   static const String ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION = "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION";
   static const String ACTION_MANAGE_ALL_SIM_PROFILES_SETTINGS = "android.settings.MANAGE_ALL_SIM_PROFILES_SETTINGS";
   static const String ACTION_MANAGE_APPLICATIONS_SETTINGS = "android.settings.MANAGE_APPLICATIONS_SETTINGS";
   static const String ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION = "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION";
   static const String ACTION_MANAGE_DEFAULT_APPS_SETTINGS = "android.settings.MANAGE_DEFAULT_APPS_SETTINGS";
   static const String ACTION_MANAGE_OVERLAY_PERMISSION = "android.settings.action.MANAGE_OVERLAY_PERMISSION";
   static const String ACTION_MANAGE_UNKNOWN_APP_SOURCES = "android.settings.MANAGE_UNKNOWN_APP_SOURCES";
   static const String ACTION_MANAGE_WRITE_SETTINGS = "android.settings.action.MANAGE_WRITE_SETTINGS";
   static const String ACTION_MEMORY_CARD_SETTINGS = "android.settings.MEMORY_CARD_SETTINGS";
   static const String ACTION_NETWORK_OPERATOR_SETTINGS = "android.settings.NETWORK_OPERATOR_SETTINGS";
   static const String ACTION_NFCSHARING_SETTINGS = "android.settings.NFCSHARING_SETTINGS";
   static const String ACTION_NFC_PAYMENT_SETTINGS = "android.settings.NFC_PAYMENT_SETTINGS";
   static const String ACTION_NFC_SETTINGS = "android.settings.NFC_SETTINGS";
   static const String ACTION_NIGHT_DISPLAY_SETTINGS = "android.settings.NIGHT_DISPLAY_SETTINGS";
   static const String ACTION_NOTIFICATION_ASSISTANT_SETTINGS = "android.settings.NOTIFICATION_ASSISTANT_SETTINGS";
   static const String ACTION_NOTIFICATION_LISTENER_DETAIL_SETTINGS = "android.settings.NOTIFICATION_LISTENER_DETAIL_SETTINGS";
   static const String ACTION_NOTIFICATION_LISTENER_SETTINGS = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS";
   static const String ACTION_NOTIFICATION_POLICY_ACCESS_SETTINGS = "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS";
   static const String ACTION_PRINT_SETTINGS = "android.settings.ACTION_PRINT_SETTINGS";
   static const String ACTION_PRIVACY_SETTINGS = "android.settings.PRIVACY_SETTINGS";
   static const String ACTION_PROCESS_WIFI_EASY_CONNECT_URI = "android.settings.PROCESS_WIFI_EASY_CONNECT_URI";
   static const String ACTION_QUICK_ACCESS_WALLET_SETTINGS = "android.settings.QUICK_ACCESS_WALLET_SETTINGS";
   static const String ACTION_QUICK_LAUNCH_SETTINGS = "android.settings.QUICK_LAUNCH_SETTINGS";
   static const String ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS = "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS";
   static const String ACTION_REQUEST_MANAGE_MEDIA = "android.settings.REQUEST_MANAGE_MEDIA";
   static const String ACTION_REQUEST_SCHEDULE_EXACT_ALARM = "android.settings.REQUEST_SCHEDULE_EXACT_ALARM";
   static const String ACTION_REQUEST_SET_AUTOFILL_SERVICE = "android.settings.REQUEST_SET_AUTOFILL_SERVICE";
   static const String ACTION_SEARCH_SETTINGS = "android.search.action.SEARCH_SETTINGS";
   static const String ACTION_SECURITY_SETTINGS = "android.settings.SECURITY_SETTINGS";
   static const String ACTION_SETTINGS = "android.settings.SETTINGS";
   static const String ACTION_SHOW_REGULATORY_INFO = "android.settings.SHOW_REGULATORY_INFO";
   static const String ACTION_SHOW_WORK_POLICY_INFO = "android.settings.SHOW_WORK_POLICY_INFO";
   static const String ACTION_SOUND_SETTINGS = "android.settings.SOUND_SETTINGS";
  /** @deprecated */
  @deprecated
  static const String ACTION_STORAGE_VOLUME_ACCESS_SETTINGS = "android.settings.STORAGE_VOLUME_ACCESS_SETTINGS";
   static const String ACTION_SYNC_SETTINGS = "android.settings.SYNC_SETTINGS";
   static const String ACTION_USAGE_ACCESS_SETTINGS = "android.settings.USAGE_ACCESS_SETTINGS";
   static const String ACTION_USER_DICTIONARY_SETTINGS = "android.settings.USER_DICTIONARY_SETTINGS";
   static const String ACTION_VOICE_CONTROL_AIRPLANE_MODE = "android.settings.VOICE_CONTROL_AIRPLANE_MODE";
   static const String ACTION_VOICE_CONTROL_BATTERY_SAVER_MODE = "android.settings.VOICE_CONTROL_BATTERY_SAVER_MODE";
   static const String ACTION_VOICE_CONTROL_DO_NOT_DISTURB_MODE = "android.settings.VOICE_CONTROL_DO_NOT_DISTURB_MODE";
   static const String ACTION_VOICE_INPUT_SETTINGS = "android.settings.VOICE_INPUT_SETTINGS";
   static const String ACTION_VPN_SETTINGS = "android.settings.VPN_SETTINGS";
   static const String ACTION_VR_LISTENER_SETTINGS = "android.settings.VR_LISTENER_SETTINGS";
   static const String ACTION_WEBVIEW_SETTINGS = "android.settings.WEBVIEW_SETTINGS";
   static const String ACTION_WIFI_ADD_NETWORKS = "android.settings.WIFI_ADD_NETWORKS";
   static const String ACTION_WIFI_IP_SETTINGS = "android.settings.WIFI_IP_SETTINGS";
   static const String ACTION_WIFI_SETTINGS = "android.settings.WIFI_SETTINGS";
   static const String ACTION_WIRELESS_SETTINGS = "android.settings.WIRELESS_SETTINGS";
   static const String ACTION_ZEN_MODE_PRIORITY_SETTINGS = "android.settings.ZEN_MODE_PRIORITY_SETTINGS";
   static const int ADD_WIFI_RESULT_ADD_OR_UPDATE_FAILED = 1;
   static const int ADD_WIFI_RESULT_ALREADY_EXISTS = 2;
   static const int ADD_WIFI_RESULT_SUCCESS = 0;
   static const String AUTHORITY = "settings";
   static const String EXTRA_ACCOUNT_TYPES = "account_types";
   static const String EXTRA_AIRPLANE_MODE_ENABLED = "airplane_mode_enabled";
   static const String EXTRA_APP_PACKAGE = "android.provider.extra.APP_PACKAGE";
   static const String EXTRA_AUTHORITIES = "authorities";
   static const String EXTRA_BATTERY_SAVER_MODE_ENABLED = "android.settings.extra.battery_saver_mode_enabled";
   static const String EXTRA_BIOMETRIC_AUTHENTICATORS_ALLOWED = "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED";
   static const String EXTRA_CHANNEL_FILTER_LIST = "android.provider.extra.CHANNEL_FILTER_LIST";
   static const String EXTRA_CHANNEL_ID = "android.provider.extra.CHANNEL_ID";
   static const String EXTRA_CONVERSATION_ID = "android.provider.extra.CONVERSATION_ID";
   static const String EXTRA_DO_NOT_DISTURB_MODE_ENABLED = "android.settings.extra.do_not_disturb_mode_enabled";
   static const String EXTRA_DO_NOT_DISTURB_MODE_MINUTES = "android.settings.extra.do_not_disturb_mode_minutes";
   static const String EXTRA_EASY_CONNECT_ATTEMPTED_SSID = "android.provider.extra.EASY_CONNECT_ATTEMPTED_SSID";
   static const String EXTRA_EASY_CONNECT_BAND_LIST = "android.provider.extra.EASY_CONNECT_BAND_LIST";
   static const String EXTRA_EASY_CONNECT_CHANNEL_LIST = "android.provider.extra.EASY_CONNECT_CHANNEL_LIST";
   static const String EXTRA_EASY_CONNECT_ERROR_CODE = "android.provider.extra.EASY_CONNECT_ERROR_CODE";
   static const String EXTRA_INPUT_METHOD_ID = "input_method_id";
   static const String EXTRA_NOTIFICATION_LISTENER_COMPONENT_NAME = "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME";
   static const String EXTRA_SUB_ID = "android.provider.extra.SUB_ID";
   static const String EXTRA_WIFI_NETWORK_LIST = "android.provider.extra.WIFI_NETWORK_LIST";
   static const String EXTRA_WIFI_NETWORK_RESULT_LIST = "android.provider.extra.WIFI_NETWORK_RESULT_LIST";
   static const String INTENT_CATEGORY_USAGE_ACCESS_CONFIG = "android.intent.category.USAGE_ACCESS_CONFIG";
   static const String METADATA_USAGE_ACCESS_REASON = "android.settings.metadata.USAGE_ACCESS_REASON";

}
