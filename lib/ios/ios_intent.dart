///
/// create_user: zhengzaihong
/// email:1096877329@qq.com
/// create_date: 2023/4/3
/// create_time: 10:47
/// describe: 提供给IOS的意图
///
class IOSIntent{

  IOSIntent._();

  static const About = "prefs:root=General&path=About";
  static const ACCESSIBILITY = "prefs:root=General&path=ACCESSIBILITY";
  static const AIRPLANE_MODE = "prefs:root=AIRPLANE_MODE";
  static const AUTOLOCK = "prefs:root=General&path=AUTOLOCK";
  static const USAGE_CELLULAR_USAGE = "prefs:root=General&path=USAGE/CELLULAR_USAGE";

  static const Brightness = "prefs:root=Brightness";  //打开Brightness(亮度)设置界面
  static const Bluetooth = "prefs:root=Bluetooth";//打开蓝牙设置
  static const DATE_AND_TIME = "prefs:root=General&path=DATE_AND_TIME";//日期与时间设置
  static const FACETIME = "prefs:root=FACETIME";//打开FaceTime设置

  static const KEYBOARD = "prefs:root=General";//打开键盘设置
  static const CASTLE = "prefs:root=CASTLE";//打开iClound设置
  static const STORAGE_AND_BACKUP = "prefs:root=CASTLE&path=STORAGE_AND_BACKUP";//打开iCloud下的储存空间
  static const INTERNATIONAL = "prefs:root=General&path=INTERNATIONAL";////打开通用下的语言和地区设置

  static const LOCATION_SERVICES = "prefs:root=LOCATION_SERVICES";////打开隐私下的定位服务
  static const ACCOUNT_SETTINGS = " prefs:root=ACCOUNT_SETTINGS";////打开通用下的语言和地区设置
  static const MUSIC = "prefs:root=MUSIC";////打开设置下的音乐
  static const MUSIC_EQ = "prefs:root=MUSIC&path=EQ";////打开音乐下的均衡器
  static const MUSIC_VOLUMELIMIT = "prefs:root=MUSIC&path=VolumeLimit";////打开音乐下的音量
  static const Network = "prefs:root=General&path=Network";////打开通用下的网络

  static const NIKE_PLUS_IPOD = "prefs:root=NIKE_PLUS_IPOD";////打开通用下的网络
  static const NOTES = "prefs:root=NOTES";////打开设置下的备忘录设置
  static const NOTIFICATIONS_ID = "prefs:root=NOTIFICATIONS_ID";////打开设置下的通知设置
  static const Phone = "prefs:root=Phone";////打开电话设置
  static const Photos = "prefs:root=Photos";////打开设置下照片和相机设置

  static const ManagedConfigurationList = "prefs:root=General&path=ManagedConfigurationList";////打开通用下的描述文件
  static const Ringtone = "prefs:root=Sounds&path=Ringtone";
  static const Safari = "prefs:root=Safari";////打开设置下的safari设置
  static const Assistant = "prefs:root=General&path=Assistant";////打开siri不成功
  static const Sounds = "prefs:root=Sounds";////打开设置下的声音设置
  static const SOFTWARE_UPDATE_LINK = "prefs:root=General&path=SOFTWARE_UPDATE_LINK";////打开通用下的软件更新
  static const STORE = "prefs:root=STORE";////打开通用下的iTounes Store和App Store设置


  static const USAGE = "prefs:root=General&path=USAGE";////打开通用下的用量
  static const VPN = " prefs:root=VIDEO prefs:root=General&path=Network/VPN";////打开通用下的vpn设置
  static const Wallpaper = "prefs:root=Wallpaper";////打开设置下的墙纸设置
  static const WIFI = "prefs:root=WIFI";////打开wifi设置
  static const INTERNET_TETHERING = "prefs:root=INTERNET_TETHERING";////打开设置下的墙纸设置


  static const TWITTER = "prefs:root=TWITTER";////打开设置下的twitter设置
  static const FACEBOOK = "prefs:root=FACEBOOK";////打开设置下的Facebook设置


}