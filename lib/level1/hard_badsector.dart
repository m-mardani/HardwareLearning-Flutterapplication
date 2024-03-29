import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class hard_badsector_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<hard_badsector_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/nZz9L-brF7U';
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: false,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) => Scaffold(
            appBar: AppBar(
              title: const Text('بدسکتور هارد و انواع آن'),
              backgroundColor: Color.fromARGB(255, 69, 9, 129),
            ),
            body: ListView(
              children: [
                player,
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  width: 350,
                  child: Expanded(
                    child: Text(
                      '''فضای ذخیره‌سازی هارد‌دیسک از تعداد زیادی سکتور یا بخش با حجم ۴ کیلو بایت تشکیل شده است. هنگامی یکی از این سکتور ها آسیب ببینند یک بدسکتور  ایجاد خواهد شد و بسته به نوع آسیب، سطح بدسکتور هم متفاوت است.

بدسکتور ها یکی فاکتور اصلی کُند شدن و عملکرد نامطلوب هارد دیسک است. زمانی که بدسکتور بیش از حد زیاد می‌شود نرم‌افزار خود هارد دستور متوقف شدن دستگاه را می‌دهد درواقع  Crash می‌کند و دیگر هارد توسط سیستم شناسایی نمی‌شود.

اما اجازه دهید قبل از این که شروع کنیم یک تذکر بسیار مهم خدمتتان بگویم. روش هایی که در ادامه مقاله بررسی می‌کنیم صرفا برای هارد هایی است که ایرادات مکانیکی و فیزیکی شدیدی نداشته باشند یا تعداد بدسکتور آنها  از ۳۰ الی ۴۰ بیشتر نباشند. توصیه می‌شود اگر اطلاعات مهم در هاردتان دارید و مطمئن نیستید هاردتان چه ایرادی دارد خودتان به هیچ عنوان وارد عمل نشوید
بدسکتور چگونه ایجاد می‌شود؟
بدسکتور بر اثر استفاده بیش از حد، نوسانات برق، ایرادات فیزیکی، منطقی و مشکلات کارخانه‌ای به وجود می‌آید. علاوه‌بر این حتی هارد های اکبندی  پیدا می‌شوند که بر اثر جابجایی زیاد باعث وجود سکتور های خراب شده است.

البته در نظر داشته باشید که تمام سکتور های یک هارد برای خواندن و نوشتن اطلاعات نیستند، برای مثال سکتور های بخش SMART هارد که برای لاگ کردن هارد (از آسیب بخش هایی که به عنوان بخش های ناپایدار شناخته می شوند، جلوگیری می کند.) استفاده می‌شود.

بدسکتور ها به دو نوع تقسیم می‌شوند بدسکتور های فیزیکی (Hard bad sector) و بدسکتور های منطقی یا نرم‌افزاری (Soft bad sector) که نوع اول به هیچ عنوان با استفاده از نرم‌افزار قابل تعمیر نیستند و نیاز به طی فرایندی تخصصی با تجهیزاتی پیشرفته دارد، در غیر این صورت استفاده از هر گونه نرم‌افزار برای اسکن و تعمیر آن جز خراب کاری اثر دیگری ندارد.
نوع دوم یعنی بدسکتور های منطقی آن دسته از بدسکتور هایی هستند که با برخی از نرم‌افزار ها آن هم در صورت  زیاد نبودن قابل حل است و برای بهبود عملکرد هارد دیسک مفید است.
مشکلاتی که موجب بدسکتور فیزیکی (Hard bad sector) می‌شود:
مشکلات برد، هد، پلیت
مشکلات سخت افزاری مکانیکی و الکترونیکی
مشکلاتی که موجب بدسکتور منطقی (Soft bad sector) می‌شود:
نقض در بررسی حافظه به علت خطاهای خواندن و رایت کردن
تخریب هدر های بخش تحت تاثیر میدان مغناطیسی


۳ روش اثبات شده برای تعمیر و رفع بدسکتور  در هارد دیسک

روش اول: استفاده از  CHKDSK ویندوز برای اسکن و رفع بدسکتور
ابزار پیشفرض ویندوز CHKDSK یکی از گزینه های برای کار با بدسکتور و باگ های سطحی است، این ابزار برای کسانی که می خواهند روند ساده و راحتی طی کنند مناسب است، برای شروع اسکن و بازیابی به روش عادی مراحل زیر را انجام می‌دهیم:

در خط فرمان (CMD) ابتدا عبارت CHKDSK و سپس مسیر دیسک را تایپ کنید( برای مثال:‌ CHKDSK C: /F /R  )
کلید اینتر را بفشارید و منتظر بمانید تا تمامی اطلاعات ذخیره شده در هارد دیسک شما بررسی شود.
کامپیوتر را راه اندازی مجدد کنید.
CHKDSK نمی تواند بدسکتور را بروی هارد درایو همانند VictoriaHDD و HDD Regenerator که در ادامه بررسی می‌کنیم، تعمیر کند. این ابزار تنها می تواند آنها را شناسایی کرده و علامت گذاری کند،  CHKDSKبخش های مشخص شده را با عنوان معیوب در نظر می گیرد و تلاش نمی کند اطلاعات را از روی آنها بخواند یا رایت کند.


روش دوم: تعمیر بدسکتور با نرم‌افزار HDD Regenerator
با نرم‌افزار HDD Regenrator  برای رفع بدسکتور جهت بهبود مطلوبیت عملکرد هارد کار می کنیم. این نرم افزار هم زمان با بخش سخت افزاری و نرم افزاری هارد سر و کار دارد، تا با حداقل کاهش حجم باعث افزایش عمر هارد می‌شود. خب حالا قبل از این بریم سراغ تعمیر بدسکتور اول باید چند موارد را با HDD regenerator بررسی کنیم:

برای قدم اول در تب “Regeneration”اولین گزینه، یعنی “Start process under Windows” را انتخاب کنید.
تمامی برنامه های در حال اجرا را ببندید، تا ابزار به تمام بخش های هارد دیسک دسترسی پیدا کند.
اگر یک خطای دسترسی رخ داد رو گزینه “Cancel” کلیک کنید.
در پنجره باز شده حالت دوم را انتخاب کنید (عدد ۲ را وارد کرده و کلید اینتر را بفشارید) و مقدار پیشنهادی برای شروع را تغییر ندهید.
پس از اتمام اسکن کردن، نرم‌افزار دو نکته مهم را نمایش می دهد: بدسکتور ایجاد شده و بدسکتور بهبود یافته.


روش سوم: اسکن و رفع بدسکتور با نرم‌افزار  VictoriaHDD
البته نرم‌افزار دیگری به نام VictoriaHDD همان کار ( اسکن کردن و بررسی وضعیت هارد ) را با ویژگی های بیشتری انجام می دهد، هر چند کاربران برای استفاده از این نرم‌افزار برای اولین بار با مشکلاتی رو به رو هستند، زیرا رابط کاربری این ابزار پیچیده تر است، برای این روش شما احتیاج به یک فلش قابل بوت با Victoria دارید. این کار را به راحتی از طریق ابزار WinSetupFromUSB درست می شود.

''',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ));
}
