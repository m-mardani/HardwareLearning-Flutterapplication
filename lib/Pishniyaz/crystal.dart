import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class crystall_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<crystall_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/YzcKQWwkzWs';
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
              title: const Text('کریستال'),
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
                      '''کریستال‌ها یکی از مهم‌ترین و پر استفاده ترین قطعات در صنعت الکترونیک هستند که وقتی به آن‌ها ولتاژ داده می‌شود، با فرکانسی مشخص به ارتعاش درمی‌آید و به این صورت سیگنال الکتریکی را به ارتعاشات مکانیکی تبدیل می‌کند. این ارتعاش‌ها، بسیار دقیق هستند و به همین علت ما در خروجی سیگنال الکتریکی بسیار دقیقی را نیز مشاهده می‌کنیم. به عبارت دیگر، تولید سیگنال الکتریکی با فرکانس بسیار دقیق وظیفه کریستال است.
                      کریستال در مداراتی که دارای میکروکنترلر (icها حافظه، icهای کنترل کننده) هستند وجود دارند. از آنجایی که کلاک‌ها سرعت اجرای دستورالعمل‌ها را در پردازنده دارند، زمان لازم جهت تبدیل آنالوگ به دیجیتال و غیره را تعیین می‌کنند؛ هر میکروکنترلر برای فعالیت خود به آن‌ها احتیاج دارد.

به همین دلیل کریستال را می‌توان پالس ساعت دانست که جهت تولید نوسانات خاص برای ایجاد هماهنگی میان قطعات مدار استفاده می‌شود. همچنین می‌توان آن را قلب مدار دانست که تمامی عملیات بر اساس فرکانس تولیدی آن تنظیم می‌شوند. واحد کریستال‌ها می‌تواند بر اساس هرتز، مگا هرتز یا کیلوهرتز باشد.
جنس کریستال‌ها از سیلیس است که به دو صورت کریستالی و غیر کریستالی در سطح زمین یافت می‌شود. بین دو صفحه فلزی ماده شفاف کریستال کوارتز وجود دارد. اعمال ولتاژ به کریستال موجب تغییر شکل و ارتعاش کریستال کوارتز داخلی می‌شود و این امر به دلیل همان ارتعاشات و قوانین تشدید که در بالا به آن اشاره شد انجام می‌گیرد.
مهم‌ترین عوامل خرابی کریستال‌ها
عمر مفید کریستال تمام شده است.
ضربه می‌تواند به کریستال آسیب بزند. به این صورت که کریستال یک قطعه مکانیکی است و در داخل یک جعبه فلزی در حال ارتعاش است؛ بنابراین با یک ضربه می‌تواند به بدنه این جعبه چسبیده و خراب شود.
اصلی‌ترین بخش کریستال که همان ورقه نازک کوارتزی است که در داخل آن قرار دارد با گرمای شدید می‌تواند آسیب ببیند زیرا بسیار ظریف و حساس است.
یک اسیلاتور کریستالی یک مدار نوسان ساز الکترونیکی است که از تشدید مکانیکی یک کریستال ارتعاشی از مواد پیزوالکتریک برای ایجاد یک سیگنال الکتریکی با فرکانس ثابت استفاده می کند. این فرکانس اغلب برای ردیابی زمان، مانند ساعت های مچی کوارتز، برای ارائه یک سیگنال ساعت پایدار برای مدارهای مجتمع دیجیتال، و برای تثبیت فرکانس برای فرستنده ها و گیرنده های رادیویی استفاده می شود.

متداول ترین نوع تشدید کننده پیزوالکتریک مورد استفاده کریستال کوارتز است، بنابراین مدارهای نوسانگر که آنها را در خود جای داده اند به عنوان نوسانگرهای کریستالی شناخته می شوند. با این حال، سایر مواد پیزوالکتریک از جمله سرامیک های پلی کریستالی در مدارهای مشابه استفاده می شود.

یک نوسان ساز یا اسیلاتور کریستالی به تغییر جزئی شکل کریستال کوارتز تحت میدان الکتریکی متکی است، خاصیتی که به نام الکترواستریکشن یا پیزوالکتریک معکوس شناخته می شود. ولتاژ اعمال شده به الکترودهای روی کریستال باعث تغییر شکل آن می شود. هنگامی که ولتاژ حذف می شود، کریستال ولتاژ کوچکی تولید می کند؛ زیرا به شکل کشسانی به شکل اولیه خود باز می گردد.

کوارتز در یک فرکانس تشدید پایدار نوسان می کند، مانند یک مدار RLC عمل می کند، اما با ضریب Q بسیار بالاتر (اتلاف انرژی کمتر در هر چرخه نوسان). هنگامی که یک کریستال کوارتز به فرکانس خاصی تنظیم می شود (که تحت تأثیر جرم الکترودهای متصل به کریستال، جهت گیری کریستال، دما و سایر عوامل قرار می گیرد)، آن فرکانس را با پایداری بالا حفظ می کند.

یک نوسان ساز (اسیلاتور) کریستالی یک مدار نوسان ساز الکترونیکی است که از یک تشدید کننده پیزوالکتریک، یک کریستال، به عنوان عنصر تعیین کننده فرکانس خود استفاده می کند. کریستال اصطلاح رایجی است که در الکترونیک برای جزء تعیین کننده فرکانس، ویفری از کریستال کوارتز یا سرامیک با الکترودهای متصل به آن استفاده می شود. اصطلاح دقیق تر برای آن تشدید کننده پیزوالکتریک است. از کریستال ها در انواع دیگر مدارهای الکترونیکی مانند فیلترهای کریستالی نیز استفاده می شود.
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
