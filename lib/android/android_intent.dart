
///
/// create_user: zhengzaihong
/// email:1096877329@qq.com
/// create_date: 2023/3/31
/// create_time: 14:58
/// describe: android 意图,flutter 使用者请
/// 完全参照Android 原生使用
///
class AndroidIntent{
   AndroidIntent._();

   static const String ACTION_AIRPLANE_MODE_CHANGED = "android.intent.action.AIRPLANE_MODE";
   static const String ACTION_ALL_APPS = "android.intent.action.ALL_APPS";
   static const String ACTION_ANSWER = "android.intent.action.ANSWER";
   static const String ACTION_APPLICATION_PREFERENCES = "android.intent.action.APPLICATION_PREFERENCES";
   static const String ACTION_APPLICATION_RESTRICTIONS_CHANGED = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED";
   static const String ACTION_APP_ERROR = "android.intent.action.APP_ERROR";
   static const String ACTION_ASSIST = "android.intent.action.ASSIST";
   static const String ACTION_ATTACH_DATA = "android.intent.action.ATTACH_DATA";
   static const String ACTION_AUTO_REVOKE_PERMISSIONS = "android.intent.action.AUTO_REVOKE_PERMISSIONS";
   static const String ACTION_BATTERY_CHANGED = "android.intent.action.BATTERY_CHANGED";
   static const String ACTION_BATTERY_LOW = "android.intent.action.BATTERY_LOW";
   static const String ACTION_BATTERY_OKAY = "android.intent.action.BATTERY_OKAY";
   static const String ACTION_BOOT_COMPLETED = "android.intent.action.BOOT_COMPLETED";
   static const String ACTION_BUG_REPORT = "android.intent.action.BUG_REPORT";
   static const String ACTION_CALL = "android.intent.action.CALL";
   static const String ACTION_CALL_BUTTON = "android.intent.action.CALL_BUTTON";
   static const String ACTION_CAMERA_BUTTON = "android.intent.action.CAMERA_BUTTON";
   static const String ACTION_CARRIER_SETUP = "android.intent.action.CARRIER_SETUP";
   static const String ACTION_CHOOSER = "android.intent.action.CHOOSER";


   @deprecated
   static const String ACTION_CLOSE_SYSTEM_DIALOGS = "android.intent.action.CLOSE_SYSTEM_DIALOGS";
   static const String ACTION_CONFIGURATION_CHANGED = "android.intent.action.CONFIGURATION_CHANGED";
   static const String ACTION_CREATE_DOCUMENT = "android.intent.action.CREATE_DOCUMENT";
   static const String ACTION_CREATE_REMINDER = "android.intent.action.CREATE_REMINDER";
   static const String ACTION_CREATE_SHORTCUT = "android.intent.action.CREATE_SHORTCUT";
   static const String ACTION_DATE_CHANGED = "android.intent.action.DATE_CHANGED";
   static const String ACTION_DEFAULT = "android.intent.action.VIEW";
   static const String ACTION_DEFINE = "android.intent.action.DEFINE";
   static const String ACTION_DELETE = "android.intent.action.DELETE";

   @deprecated
   static const String ACTION_DEVICE_STORAGE_LOW = "android.intent.action.DEVICE_STORAGE_LOW";

   @deprecated
   static const String ACTION_DEVICE_STORAGE_OK = "android.intent.action.DEVICE_STORAGE_OK";
   static const String ACTION_DIAL = "android.intent.action.DIAL";
   static const String ACTION_DOCK_EVENT = "android.intent.action.DOCK_EVENT";
   static const String ACTION_DREAMING_STARTED = "android.intent.action.DREAMING_STARTED";
   static const String ACTION_DREAMING_STOPPED = "android.intent.action.DREAMING_STOPPED";
   static const String ACTION_EDIT = "android.intent.action.EDIT";
   static const String ACTION_EXTERNAL_APPLICATIONS_AVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE";
   static const String ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE";
   static const String ACTION_FACTORY_TEST = "android.intent.action.FACTORY_TEST";
   static const String ACTION_GET_CONTENT = "android.intent.action.GET_CONTENT";
   static const String ACTION_GET_RESTRICTION_ENTRIES = "android.intent.action.GET_RESTRICTION_ENTRIES";
   static const String ACTION_GTALK_SERVICE_CONNECTED = "android.intent.action.GTALK_CONNECTED";
   static const String ACTION_GTALK_SERVICE_DISCONNECTED = "android.intent.action.GTALK_DISCONNECTED";
   static const String ACTION_HEADSET_PLUG = "android.intent.action.HEADSET_PLUG";
   static const String ACTION_INPUT_METHOD_CHANGED = "android.intent.action.INPUT_METHOD_CHANGED";
   static const String ACTION_INSERT = "android.intent.action.INSERT";
   static const String ACTION_INSERT_OR_EDIT = "android.intent.action.INSERT_OR_EDIT";
   static const String ACTION_INSTALL_FAILURE = "android.intent.action.INSTALL_FAILURE";
   @deprecated
   static const String ACTION_INSTALL_PACKAGE = "android.intent.action.INSTALL_PACKAGE";
   static const String ACTION_LOCALE_CHANGED = "android.intent.action.LOCALE_CHANGED";
   static const String ACTION_LOCKED_BOOT_COMPLETED = "android.intent.action.LOCKED_BOOT_COMPLETED";
   static const String ACTION_MAIN = "android.intent.action.MAIN";
   static const String ACTION_MANAGED_PROFILE_ADDED = "android.intent.action.MANAGED_PROFILE_ADDED";
   static const String ACTION_MANAGED_PROFILE_AVAILABLE = "android.intent.action.MANAGED_PROFILE_AVAILABLE";
   static const String ACTION_MANAGED_PROFILE_REMOVED = "android.intent.action.MANAGED_PROFILE_REMOVED";
   static const String ACTION_MANAGED_PROFILE_UNAVAILABLE = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE";
   static const String ACTION_MANAGED_PROFILE_UNLOCKED = "android.intent.action.MANAGED_PROFILE_UNLOCKED";
   static const String ACTION_MANAGE_NETWORK_USAGE = "android.intent.action.MANAGE_NETWORK_USAGE";
   static const String ACTION_MANAGE_PACKAGE_STORAGE = "android.intent.action.MANAGE_PACKAGE_STORAGE";
   static const String ACTION_MANAGE_UNUSED_APPS = "android.intent.action.MANAGE_UNUSED_APPS";
   static const String ACTION_MEDIA_BAD_REMOVAL = "android.intent.action.MEDIA_BAD_REMOVAL";
   static const String ACTION_MEDIA_BUTTON = "android.intent.action.MEDIA_BUTTON";
   static const String ACTION_MEDIA_CHECKING = "android.intent.action.MEDIA_CHECKING";
   static const String ACTION_MEDIA_EJECT = "android.intent.action.MEDIA_EJECT";
   static const String ACTION_MEDIA_MOUNTED = "android.intent.action.MEDIA_MOUNTED";
   static const String ACTION_MEDIA_NOFS = "android.intent.action.MEDIA_NOFS";
   static const String ACTION_MEDIA_REMOVED = "android.intent.action.MEDIA_REMOVED";
   static const String ACTION_MEDIA_SCANNER_FINISHED = "android.intent.action.MEDIA_SCANNER_FINISHED";

   @deprecated
   static const String ACTION_MEDIA_SCANNER_SCAN_FILE = "android.intent.action.MEDIA_SCANNER_SCAN_FILE";
   static const String ACTION_MEDIA_SCANNER_STARTED = "android.intent.action.MEDIA_SCANNER_STARTED";
   static const String ACTION_MEDIA_SHARED = "android.intent.action.MEDIA_SHARED";
   static const String ACTION_MEDIA_UNMOUNTABLE = "android.intent.action.MEDIA_UNMOUNTABLE";
   static const String ACTION_MEDIA_UNMOUNTED = "android.intent.action.MEDIA_UNMOUNTED";
   static const String ACTION_MY_PACKAGE_REPLACED = "android.intent.action.MY_PACKAGE_REPLACED";
   static const String ACTION_MY_PACKAGE_SUSPENDED = "android.intent.action.MY_PACKAGE_SUSPENDED";
   static const String ACTION_MY_PACKAGE_UNSUSPENDED = "android.intent.action.MY_PACKAGE_UNSUSPENDED";
   @deprecated
   static const String ACTION_NEW_OUTGOING_CALL = "android.intent.action.NEW_OUTGOING_CALL";
   static const String ACTION_OPEN_DOCUMENT = "android.intent.action.OPEN_DOCUMENT";
   static const String ACTION_OPEN_DOCUMENT_TREE = "android.intent.action.OPEN_DOCUMENT_TREE";
   static const String ACTION_PACKAGES_SUSPENDED = "android.intent.action.PACKAGES_SUSPENDED";
   static const String ACTION_PACKAGES_UNSUSPENDED = "android.intent.action.PACKAGES_UNSUSPENDED";
   static const String ACTION_PACKAGE_ADDED = "android.intent.action.PACKAGE_ADDED";
   static const String ACTION_PACKAGE_CHANGED = "android.intent.action.PACKAGE_CHANGED";
   static const String ACTION_PACKAGE_DATA_CLEARED = "android.intent.action.PACKAGE_DATA_CLEARED";
   static const String ACTION_PACKAGE_FIRST_LAUNCH = "android.intent.action.PACKAGE_FIRST_LAUNCH";
   static const String ACTION_PACKAGE_FULLY_REMOVED = "android.intent.action.PACKAGE_FULLY_REMOVED";
   @deprecated
   static const String ACTION_PACKAGE_INSTALL = "android.intent.action.PACKAGE_INSTALL";
   static const String ACTION_PACKAGE_NEEDS_VERIFICATION = "android.intent.action.PACKAGE_NEEDS_VERIFICATION";
   static const String ACTION_PACKAGE_REMOVED = "android.intent.action.PACKAGE_REMOVED";
   static const String ACTION_PACKAGE_REPLACED = "android.intent.action.PACKAGE_REPLACED";
   static const String ACTION_PACKAGE_RESTARTED = "android.intent.action.PACKAGE_RESTARTED";
   static const String ACTION_PACKAGE_VERIFIED = "android.intent.action.PACKAGE_VERIFIED";
   static const String ACTION_PASTE = "android.intent.action.PASTE";
   static const String ACTION_PICK = "android.intent.action.PICK";
   static const String ACTION_PICK_ACTIVITY = "android.intent.action.PICK_ACTIVITY";
   static const String ACTION_POWER_CONNECTED = "android.intent.action.ACTION_POWER_CONNECTED";
   static const String ACTION_POWER_DISCONNECTED = "android.intent.action.ACTION_POWER_DISCONNECTED";
   static const String ACTION_POWER_USAGE_SUMMARY = "android.intent.action.POWER_USAGE_SUMMARY";
   static const String ACTION_PROCESS_TEXT = "android.intent.action.PROCESS_TEXT";
   static const String ACTION_PROFILE_ACCESSIBLE = "android.intent.action.PROFILE_ACCESSIBLE";
   static const String ACTION_PROFILE_INACCESSIBLE = "android.intent.action.PROFILE_INACCESSIBLE";
   static const String ACTION_PROVIDER_CHANGED = "android.intent.action.PROVIDER_CHANGED";
   static const String ACTION_QUICK_CLOCK = "android.intent.action.QUICK_CLOCK";
   static const String ACTION_QUICK_VIEW = "android.intent.action.QUICK_VIEW";
   static const String ACTION_REBOOT = "android.intent.action.REBOOT";
   static const String ACTION_RUN = "android.intent.action.RUN";
   static const String ACTION_SCREEN_OFF = "android.intent.action.SCREEN_OFF";
   static const String ACTION_SCREEN_ON = "android.intent.action.SCREEN_ON";
   static const String ACTION_SEARCH = "android.intent.action.SEARCH";
   static const String ACTION_SEARCH_LONG_PRESS = "android.intent.action.SEARCH_LONG_PRESS";
   static const String ACTION_SEND = "android.intent.action.SEND";
   static const String ACTION_SENDTO = "android.intent.action.SENDTO";
   static const String ACTION_SEND_MULTIPLE = "android.intent.action.SEND_MULTIPLE";
   static const String ACTION_SET_WALLPAPER = "android.intent.action.SET_WALLPAPER";
   static const String ACTION_SHOW_APP_INFO = "android.intent.action.SHOW_APP_INFO";
   static const String ACTION_SHUTDOWN = "android.intent.action.ACTION_SHUTDOWN";
   static const String ACTION_SYNC = "android.intent.action.SYNC";
   static const String ACTION_SYSTEM_TUTORIAL = "android.intent.action.SYSTEM_TUTORIAL";
   static const String ACTION_TIMEZONE_CHANGED = "android.intent.action.TIMEZONE_CHANGED";
   static const String ACTION_TIME_CHANGED = "android.intent.action.TIME_SET";
   static const String ACTION_TIME_TICK = "android.intent.action.TIME_TICK";
   static const String ACTION_TRANSLATE = "android.intent.action.TRANSLATE";
   static const String ACTION_UID_REMOVED = "android.intent.action.UID_REMOVED";
   @deprecated
   static const String ACTION_UMS_CONNECTED = "android.intent.action.UMS_CONNECTED";
   @deprecated
   static const String ACTION_UMS_DISCONNECTED = "android.intent.action.UMS_DISCONNECTED";
   @deprecated
   static const String ACTION_UNINSTALL_PACKAGE = "android.intent.action.UNINSTALL_PACKAGE";
   static const String ACTION_USER_BACKGROUND = "android.intent.action.USER_BACKGROUND";
   static const String ACTION_USER_FOREGROUND = "android.intent.action.USER_FOREGROUND";
   static const String ACTION_USER_INITIALIZE = "android.intent.action.USER_INITIALIZE";
   static const String ACTION_USER_PRESENT = "android.intent.action.USER_PRESENT";
   static const String ACTION_USER_UNLOCKED = "android.intent.action.USER_UNLOCKED";
   static const String ACTION_VIEW = "android.intent.action.VIEW";
   static const String ACTION_VIEW_LOCUS = "android.intent.action.VIEW_LOCUS";
   static const String ACTION_VIEW_PERMISSION_USAGE = "android.intent.action.VIEW_PERMISSION_USAGE";
   static const String ACTION_VIEW_PERMISSION_USAGE_FOR_PERIOD = "android.intent.action.VIEW_PERMISSION_USAGE_FOR_PERIOD";
   static const String ACTION_VOICE_COMMAND = "android.intent.action.VOICE_COMMAND";
   @deprecated
   static const String ACTION_WALLPAPER_CHANGED = "android.intent.action.WALLPAPER_CHANGED";
   static const String ACTION_WEB_SEARCH = "android.intent.action.WEB_SEARCH";
   static const String CATEGORY_ACCESSIBILITY_SHORTCUT_TARGET = "android.intent.category.ACCESSIBILITY_SHORTCUT_TARGET";
   static const String CATEGORY_ALTERNATIVE = "android.intent.category.ALTERNATIVE";
   static const String CATEGORY_APP_BROWSER = "android.intent.category.APP_BROWSER";
   static const String CATEGORY_APP_CALCULATOR = "android.intent.category.APP_CALCULATOR";
   static const String CATEGORY_APP_CALENDAR = "android.intent.category.APP_CALENDAR";
   static const String CATEGORY_APP_CONTACTS = "android.intent.category.APP_CONTACTS";
   static const String CATEGORY_APP_EMAIL = "android.intent.category.APP_EMAIL";
   static const String CATEGORY_APP_FILES = "android.intent.category.APP_FILES";
   static const String CATEGORY_APP_GALLERY = "android.intent.category.APP_GALLERY";
   static const String CATEGORY_APP_MAPS = "android.intent.category.APP_MAPS";
   static const String CATEGORY_APP_MARKET = "android.intent.category.APP_MARKET";
   static const String CATEGORY_APP_MESSAGING = "android.intent.category.APP_MESSAGING";
   static const String CATEGORY_APP_MUSIC = "android.intent.category.APP_MUSIC";
   static const String CATEGORY_BROWSABLE = "android.intent.category.BROWSABLE";
   static const String CATEGORY_CAR_DOCK = "android.intent.category.CAR_DOCK";
   static const String CATEGORY_CAR_MODE = "android.intent.category.CAR_MODE";
   static const String CATEGORY_DEFAULT = "android.intent.category.DEFAULT";
   static const String CATEGORY_DESK_DOCK = "android.intent.category.DESK_DOCK";
   static const String CATEGORY_DEVELOPMENT_PREFERENCE = "android.intent.category.DEVELOPMENT_PREFERENCE";
   static const String CATEGORY_EMBED = "android.intent.category.EMBED";
   static const String CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST";
   static const String CATEGORY_HE_DESK_DOCK = "android.intent.category.HE_DESK_DOCK";
   static const String CATEGORY_HOME = "android.intent.category.HOME";
   static const String CATEGORY_INFO = "android.intent.category.INFO";
   static const String CATEGORY_LAUNCHER = "android.intent.category.LAUNCHER";
   static const String CATEGORY_LEANBACK_LAUNCHER = "android.intent.category.LEANBACK_LAUNCHER";
   static const String CATEGORY_LE_DESK_DOCK = "android.intent.category.LE_DESK_DOCK";
   static const String CATEGORY_MONKEY = "android.intent.category.MONKEY";
   static const String CATEGORY_OPENABLE = "android.intent.category.OPENABLE";
   static const String CATEGORY_PREFERENCE = "android.intent.category.PREFERENCE";
   static const String CATEGORY_SAMPLE_CODE = "android.intent.category.SAMPLE_CODE";
   static const String CATEGORY_SECONDARY_HOME = "android.intent.category.SECONDARY_HOME";
   static const String CATEGORY_SELECTED_ALTERNATIVE = "android.intent.category.SELECTED_ALTERNATIVE";
   static const String CATEGORY_TAB = "android.intent.category.TAB";
   static const String CATEGORY_TEST = "android.intent.category.TEST";
   static const String CATEGORY_TYPED_OPENABLE = "android.intent.category.TYPED_OPENABLE";
   static const String CATEGORY_UNIT_TEST = "android.intent.category.UNIT_TEST";
   static const String CATEGORY_VOICE = "android.intent.category.VOICE";
   static const String CATEGORY_VR_HOME = "android.intent.category.VR_HOME";


   static const String EXTRA_ALARM_COUNT = "android.intent.extra.ALARM_COUNT";
   static const String EXTRA_ALLOW_MULTIPLE = "android.intent.extra.ALLOW_MULTIPLE";
   @deprecated
   static const String EXTRA_ALLOW_REPLACE = "android.intent.extra.ALLOW_REPLACE";
   static const String EXTRA_ALTERNATE_INTENTS = "android.intent.extra.ALTERNATE_INTENTS";
   static const String EXTRA_ASSIST_CONTEXT = "android.intent.extra.ASSIST_CONTEXT";
   static const String EXTRA_ASSIST_INPUT_DEVICE_ID = "android.intent.extra.ASSIST_INPUT_DEVICE_ID";
   static const String EXTRA_ASSIST_INPUT_HINT_KEYBOARD = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD";
   static const String EXTRA_ASSIST_PACKAGE = "android.intent.extra.ASSIST_PACKAGE";
   static const String EXTRA_ASSIST_UID = "android.intent.extra.ASSIST_UID";
   static const String EXTRA_ATTRIBUTION_TAGS = "android.intent.extra.ATTRIBUTION_TAGS";
   static const String EXTRA_AUTO_LAUNCH_SINGLE_CHOICE = "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE";
   static const String EXTRA_BCC = "android.intent.extra.BCC";
   static const String EXTRA_BUG_REPORT = "android.intent.extra.BUG_REPORT";
   static const String EXTRA_CC = "android.intent.extra.CC";
   @deprecated
   static const String EXTRA_CHANGED_COMPONENT_NAME = "android.intent.extra.changed_component_name";
   static const String EXTRA_CHANGED_COMPONENT_NAME_LIST = "android.intent.extra.changed_component_name_list";
   static const String EXTRA_CHANGED_PACKAGE_LIST = "android.intent.extra.changed_package_list";
   static const String EXTRA_CHANGED_UID_LIST = "android.intent.extra.changed_uid_list";
   static const String EXTRA_CHOOSER_REFINEMENT_INTENT_SENDER = "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER";
   static const String EXTRA_CHOOSER_TARGETS = "android.intent.extra.CHOOSER_TARGETS";
   static const String EXTRA_CHOSEN_COMPONENT = "android.intent.extra.CHOSEN_COMPONENT";
   static const String EXTRA_CHOSEN_COMPONENT_INTENT_SENDER = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER";
   static const String EXTRA_COMPONENT_NAME = "android.intent.extra.COMPONENT_NAME";
   static const String EXTRA_CONTENT_ANNOTATIONS = "android.intent.extra.CONTENT_ANNOTATIONS";
   static const String EXTRA_CONTENT_QUERY = "android.intent.extra.CONTENT_QUERY";
   static const String EXTRA_DATA_REMOVED = "android.intent.extra.DATA_REMOVED";
   static const String EXTRA_DOCK_STATE = "android.intent.extra.DOCK_STATE";
   static const int EXTRA_DOCK_STATE_CAR = 2;
   static const int EXTRA_DOCK_STATE_DESK = 1;
   static const int EXTRA_DOCK_STATE_HE_DESK = 4;
   static const int EXTRA_DOCK_STATE_LE_DESK = 3;
   static const int EXTRA_DOCK_STATE_UNDOCKED = 0;
   static const String EXTRA_DONT_KILL_APP = "android.intent.extra.DONT_KILL_APP";
   static const String EXTRA_DURATION_MILLIS = "android.intent.extra.DURATION_MILLIS";
   static const String EXTRA_EMAIL = "android.intent.extra.EMAIL";
   static const String EXTRA_END_TIME = "android.intent.extra.END_TIME";
   static const String EXTRA_EXCLUDE_COMPONENTS = "android.intent.extra.EXCLUDE_COMPONENTS";
   static const String EXTRA_FROM_STORAGE = "android.intent.extra.FROM_STORAGE";
   static const String EXTRA_HTML_TEXT = "android.intent.extra.HTML_TEXT";
   static const String EXTRA_INDEX = "android.intent.extra.INDEX";
   static const String EXTRA_INITIAL_INTENTS = "android.intent.extra.INITIAL_INTENTS";
   static const String EXTRA_INSTALLER_PACKAGE_NAME = "android.intent.extra.INSTALLER_PACKAGE_NAME";
   static const String EXTRA_INTENT = "android.intent.extra.INTENT";
   static const String EXTRA_KEY_EVENT = "android.intent.extra.KEY_EVENT";
   static const String EXTRA_LOCAL_ONLY = "android.intent.extra.LOCAL_ONLY";
   static const String EXTRA_LOCUS_ID = "android.intent.extra.LOCUS_ID";
   static const String EXTRA_MIME_TYPES = "android.intent.extra.MIME_TYPES";
   static const String EXTRA_NOT_UNKNOWN_SOURCE = "android.intent.extra.NOT_UNKNOWN_SOURCE";
   static const String EXTRA_ORIGINATING_URI = "android.intent.extra.ORIGINATING_URI";
   static const String EXTRA_PACKAGE_NAME = "android.intent.extra.PACKAGE_NAME";
   static const String EXTRA_PERMISSION_GROUP_NAME = "android.intent.extra.PERMISSION_GROUP_NAME";
   static const String EXTRA_PHONE_NUMBER = "android.intent.extra.PHONE_NUMBER";
   static const String EXTRA_PROCESS_TEXT = "android.intent.extra.PROCESS_TEXT";
   static const String EXTRA_PROCESS_TEXT_READONLY = "android.intent.extra.PROCESS_TEXT_READONLY";
   static const String EXTRA_QUICK_VIEW_FEATURES = "android.intent.extra.QUICK_VIEW_FEATURES";
   static const String EXTRA_QUIET_MODE = "android.intent.extra.QUIET_MODE";
   static const String EXTRA_REFERRER = "android.intent.extra.REFERRER";
   static const String EXTRA_REFERRER_NAME = "android.intent.extra.REFERRER_NAME";
   static const String EXTRA_REMOTE_INTENT_TOKEN = "android.intent.extra.remote_intent_token";
   static const String EXTRA_REPLACEMENT_EXTRAS = "android.intent.extra.REPLACEMENT_EXTRAS";
   static const String EXTRA_REPLACING = "android.intent.extra.REPLACING";
   static const String EXTRA_RESTRICTIONS_BUNDLE = "android.intent.extra.restrictions_bundle";
   static const String EXTRA_RESTRICTIONS_INTENT = "android.intent.extra.restrictions_intent";
   static const String EXTRA_RESTRICTIONS_LIST = "android.intent.extra.restrictions_list";
   static const String EXTRA_RESULT_RECEIVER = "android.intent.extra.RESULT_RECEIVER";
   static const String EXTRA_RETURN_RESULT = "android.intent.extra.RETURN_RESULT";
   @deprecated
   static const String EXTRA_SHORTCUT_ICON = "android.intent.extra.shortcut.ICON";
   @deprecated
   static const String EXTRA_SHORTCUT_ICON_RESOURCE = "android.intent.extra.shortcut.ICON_RESOURCE";
   static const String EXTRA_SHORTCUT_ID = "android.intent.extra.shortcut.ID";
   @deprecated
   static const String EXTRA_SHORTCUT_INTENT = "android.intent.extra.shortcut.INTENT";
   @deprecated
   static const String EXTRA_SHORTCUT_NAME = "android.intent.extra.shortcut.NAME";
   static const String EXTRA_SHUTDOWN_USERSPACE_ONLY = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY";
   static const String EXTRA_SPLIT_NAME = "android.intent.extra.SPLIT_NAME";
   static const String EXTRA_START_TIME = "android.intent.extra.START_TIME";
   static const String EXTRA_STREAM = "android.intent.extra.STREAM";
   static const String EXTRA_SUBJECT = "android.intent.extra.SUBJECT";
   static const String EXTRA_SUSPENDED_PACKAGE_EXTRAS = "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS";
   static const String EXTRA_TEMPLATE = "android.intent.extra.TEMPLATE";
   static const String EXTRA_TEXT = "android.intent.extra.TEXT";
   static const String EXTRA_TIME = "android.intent.extra.TIME";
   static const String EXTRA_TIMEZONE = "time-zone";
   static const String EXTRA_TITLE = "android.intent.extra.TITLE";
   static const String EXTRA_UID = "android.intent.extra.UID";
   static const String EXTRA_USER = "android.intent.extra.USER";
   static const String EXTRA_USER_INITIATED = "android.intent.extra.USER_INITIATED";
   static const int FILL_IN_ACTION = 1;
   static const int FILL_IN_CATEGORIES = 4;
   static const int FILL_IN_CLIP_DATA = 128;
   static const int FILL_IN_COMPONENT = 8;
   static const int FILL_IN_DATA = 2;
   static const int FILL_IN_IDENTIFIER = 256;
   static const int FILL_IN_PACKAGE = 16;
   static const int FILL_IN_SELECTOR = 64;
   static const int FILL_IN_SOURCE_BOUNDS = 32;
   static const int FLAG_ACTIVITY_BROUGHT_TO_FRONT = 4194304;
   static const int FLAG_ACTIVITY_CLEAR_TASK = 32768;
   static const int FLAG_ACTIVITY_CLEAR_TOP = 67108864;
   @deprecated
   static const int FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET = 524288;
   static const int FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS = 8388608;
   static const int FLAG_ACTIVITY_FORWARD_RESULT = 33554432;
   static const int FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY = 1048576;
   static const int FLAG_ACTIVITY_LAUNCH_ADJACENT = 4096;
   static const int FLAG_ACTIVITY_MATCH_EXTERNAL = 2048;
   static const int FLAG_ACTIVITY_MULTIPLE_TASK = 134217728;
   static const int FLAG_ACTIVITY_NEW_DOCUMENT = 524288;
   static const int FLAG_ACTIVITY_NEW_TASK = 268435456;
   static const int FLAG_ACTIVITY_NO_ANIMATION = 65536;
   static const int FLAG_ACTIVITY_NO_HISTORY = 1073741824;
   static const int FLAG_ACTIVITY_NO_USER_ACTION = 262144;
   static const int FLAG_ACTIVITY_PREVIOUS_IS_TOP = 16777216;
   static const int FLAG_ACTIVITY_REORDER_TO_FRONT = 131072;
   static const int FLAG_ACTIVITY_REQUIRE_DEFAULT = 512;
   static const int FLAG_ACTIVITY_REQUIRE_NON_BROWSER = 1024;
   static const int FLAG_ACTIVITY_RESET_TASK_IF_NEEDED = 2097152;
   static const int FLAG_ACTIVITY_RETAIN_IN_RECENTS = 8192;
   static const int FLAG_ACTIVITY_SINGLE_TOP = 536870912;
   static const int FLAG_ACTIVITY_TASK_ON_HOME = 16384;
   static const int FLAG_DEBUG_LOG_RESOLUTION = 8;
   static const int FLAG_DIRECT_BOOT_AUTO = 256;
   static const int FLAG_EXCLUDE_STOPPED_PACKAGES = 16;
   static const int FLAG_FROM_BACKGROUND = 4;
   static const int FLAG_GRANT_PERSISTABLE_URI_PERMISSION = 64;
   static const int FLAG_GRANT_PREFIX_URI_PERMISSION = 128;
   static const int FLAG_GRANT_READ_URI_PERMISSION = 1;
   static const int FLAG_GRANT_WRITE_URI_PERMISSION = 2;
   static const int FLAG_INCLUDE_STOPPED_PACKAGES = 32;
   static const int FLAG_RECEIVER_FOREGROUND = 268435456;
   static const int FLAG_RECEIVER_NO_ABORT = 134217728;
   static const int FLAG_RECEIVER_REGISTERED_ONLY = 1073741824;
   static const int FLAG_RECEIVER_REPLACE_PENDING = 536870912;
   static const int FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS = 2097152;
   static const String METADATA_DOCK_HOME = "android.dock_home";
   static const int URI_ALLOW_UNSAFE = 4;
   static const int URI_ANDROID_APP_SCHEME = 2;
   static const int URI_INTENT_SCHEME = 1;


}