///
/// create_user: zhengzaihong
/// email:1096877329@qq.com
/// create_date: 2023/4/3
/// create_time: 10:47
/// describe: 提供给IOS的常用意图
///
class IOSIntent{

  IOSIntent._();

  ///iOS 10 以上
  static const APPSTORE = "itms-apps://";//App Store
  static const CONTACTS = "contacts://"; //邮件
  static const MAILTO = "mailto://"; //
  static const GOOGLEMAP = "comgooglemaps://"; //Google 地图:
  static const APPLEMAP = "http://maps.apple.com/"; //Apple 地图

  static const PHOTOSREDIRECT = "photos-redirect://"; //照片
  static const TEL = "tel://"; //电话拨号
  static const SMS = "sms://"; //短信
  static const CALSHOW = "calshow://"; //日历
  static const MUSICS = "music://"; //音乐
  static const VIDEOS = "videos://"; //视频
  static const SHOEBOX = "shoebox://"; //钱包
  static const APPSETTING = "App-Settings://"; //设置
  static const FACETIMES = "FaceTime://";





  ///ios 10 以下
  static const About = "App-Setting:root=General&path=About";
  static const ACCESSIBILITY = "App-Setting:root=General&path=ACCESSIBILITY";
  static const AIRPLANE_MODE = "App-Setting:root=AIRPLANE_MODE";
  static const AUTOLOCK = "App-Setting:root=General&path=AUTOLOCK";
  static const USAGE_CELLULAR_USAGE = "App-Setting:root=General&path=USAGE/CELLULAR_USAGE";

  static const Brightness = "App-Setting:root=Brightness";  //打开Brightness(亮度)设置界面
  static const Bluetooth = "App-Setting:root=Bluetooth";//打开蓝牙设置
  static const DATE_AND_TIME = "App-Setting:root=General&path=DATE_AND_TIME";//日期与时间设置
  static const FACETIME = "App-Setting:root=FACETIME";//打开FaceTime设置

  static const KEYBOARD = "App-Setting:root=General";//打开键盘设置
  static const CASTLE = "App-Setting:root=CASTLE";//打开iClound设置
  static const STORAGE_AND_BACKUP = "App-Setting:root=CASTLE&path=STORAGE_AND_BACKUP";//打开iCloud下的储存空间
  static const INTERNATIONAL = "App-Setting:root=General&path=INTERNATIONAL";////打开通用下的语言和地区设置

  static const LOCATION_SERVICES = "App-Setting:root=LOCATION_SERVICES";////打开隐私下的定位服务
  static const ACCOUNT_SETTINGS = "App-Setting:root=ACCOUNT_SETTINGS";////打开通用下的语言和地区设置
  static const MUSIC = "App-Setting:root=MUSIC";////打开设置下的音乐
  static const MUSIC_EQ = "App-Setting:root=MUSIC&path=EQ";////打开音乐下的均衡器
  static const MUSIC_VOLUMELIMIT = "App-Setting:root=MUSIC&path=VolumeLimit";////打开音乐下的音量
  static const Network = "App-Setting:root=General&path=Network";////打开通用下的网络

  static const NIKE_PLUS_IPOD = "App-Setting:root=NIKE_PLUS_IPOD";////打开通用下的网络
  static const NOTES = "App-Setting:root=NOTES";////打开设置下的备忘录设置
  static const NOTIFICATIONS_ID = "App-Setting:root=NOTIFICATIONS_ID";////打开设置下的通知设置
  static const Phone = "App-Setting:root=Phone";////打开电话设置
  static const Photos = "App-Setting:root=Photos";////打开设置下照片和相机设置

  static const ManagedConfigurationList = "App-Setting:root=General&path=ManagedConfigurationList";////打开通用下的描述文件
  static const Ringtone = "App-Setting:root=Sounds&path=Ringtone";
  static const Safari = "App-Setting:root=Safari";////打开设置下的safari设置
  static const Assistant = "App-Setting:root=General&path=Assistant";////打开siri不成功
  static const Sounds = "App-Setting:root=Sounds";////打开设置下的声音设置
  static const SOFTWARE_UPDATE_LINK = "App-Setting:root=General&path=SOFTWARE_UPDATE_LINK";////打开通用下的软件更新
  static const STORE = "App-Setting:root=STORE";////打开通用下的iTounes Store和App Store设置


  static const USAGE = "App-Setting:root=General&path=USAGE";////打开通用下的用量
  static const VPN = "App-Setting:root=VIDEO App-Setting:root=General&path=Network/VPN";////打开通用下的vpn设置
  static const Wallpaper = "App-Setting:root=Wallpaper";////打开设置下的墙纸设置
  static const WIFI = "App-Setting:root=WIFI";////打开wifi设置
  static const INTERNET_TETHERING = "App-Setting:root=INTERNET_TETHERING";////打开设置下的墙纸设置


  static const TWITTER = "App-Setting:root=TWITTER";////打开设置下的twitter设置
  static const FACEBOOK = "App-Setting:root=FACEBOOK";////打开设置下的Facebook设置


}