import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class open_close_laptop_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<open_close_laptop_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/LhJRjP5b7as';
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
              title: const Text('باز و بستن لپتاپ'),
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
                      '''مرحله اول : باز کردن وتعویض صفحه کلید ASUS X541l
ابتدا تمامی ۶ پیچ راباز کنید.

• شش پیچ ۹ میلی مترو چهار پیچ ۱۱ میلی متری را جدا کنید .
• برای جدا کردن جلد بالای لپ تاپ از ابزار بازکننده پلاستیک استفاده کنید.
• جدا کردن قاب ها را از جلوی لپتاپ شروع کرده وتا انتها پوشش را ادامه دهید تا آزاد شود.
• پوشش بالا را به طور کامل بردارید ، توسط دو کابل وصل شده است که در مراحل زیر قطع می شوند.
• کابل سفید را از سوکت بکشید تا آن را جدا کنید.
• برای آزاد کردن قفل ZIF ، برگه سفید کوچک را بکشید.
• برای آزاد کردن قفل ZIF روی کابل صفحه کلید ، برگه خاکستری را به سمت بالا بکشید.
• کابل فلت سیاه و آبی را به آرامی از اتصال آن بکشید.
• اکنون می توانید صفحه کلید ASUS X541l و پنل جلویی را به طور کامل حذف کنید تا به قسمت داخلی لپ تاپ دسترسی پیدا کنید.


مرحله دوم : تعویض و بازکردن باتری ASUS X541l
بعد از باز کردن صفحه کلید(کیبورد ASUS X541l) مراحل زیر را دنبال کنید .
سه پیچ ۵ میلی متری فیلیپس شماره ۰ را از باتری بردارید.
باتری را از روی محفظه به آرامی جدا کنید .

مرحله سوم : باز کردن و تعویض رم ASUS X541
RAM در زیر مربع در قسمت پایین لپ تاپ قرار دارد.
برای جدا کردن پوشش پیچ از ابزار بازکننده پلاستیک استفاده کنید.
با استفاده از یک پیچ گوشتی # 0 فیلیپس ، پیچ 2.5 میلیمتری را روی جلد RAM شل کنید.
برای باز کردن جلد RAM ASUS X541 از ابزار بازکننده پلاستیکی استفاده کنید.
با انگشت خود ، دو زبانه فلزی (یکی در هر طرف) را به سمت بیرون فشار دهید تا کارت حافظه رم بالا بیاید.
کارت RAM را به آرامی بردارید.

مرحله چهارم : تعویض هارد ASUS X541
ده پیچ ۱۸ میلی متر فیلیپس # ۰ را از قسمت کف دستگاه جدا کنید.
حذف پنل دسترسی RAM ضروری نیست.
دستگاه را با دقت باز کنید.
برای جدا کردن صفحه کلید و پد لپ تاپ از بقیه دستگاه ، لبه های لپ تاپ را به سمت بالا بکشید.
نسبت به کابل های اتصال صفحه کلید و پد لپ تاپ مادربرد احتیاط کنید.
برای جدا کردن اتصال ZIF ، فلت آبی زا به آرامی از مادربرد جدا کنید.
چهار پیچ ۴ میلی متر فیلیپس # ۰ را که درایو هارد را نگه میدارد ، شل کنید.
اتصال ZIF را جدا کرده و هارد دیسک را از فضای آن بلند کنید. 

مرحله پنجم : بازکردن و تعویض DVD ASUS X541l
بعد از باز کردن اتصالات صفحه کلید و قاب آن مراحل زیر دنبال کنید. 
دو پیچ 4 میلی متری را دور درایو CD بردارید.
درایو سی دی را به سمت راست بکشید تا آن را حذف کنید.

مرحله ششم : تعویض صفحه نمایش ,LCD ASUS X541
شش پیچ 4 میلی متری (با یک پیچ گوشتی JIS # 1) را از زیر برچسب ها و هر دو لولا ASUS X541 جدا کنید.
لولا را با حرکت باز کردن کتاب آزاد کنید.
برای جدا کردن قاب از لبه صفحه از یک ابزار پلاستیکی استفاده کنید و تا دور لبه ها ادامه دهید تا قاب از صفحه نمایش باز شود
با استفاده از پیچ گوشتی JIS # 000 ، هشت پیچ 4 میلی متری را از گوشه های صفحه باز کنید.
صفحه را به سمت پایین بکشید.
برای جدا کردن نوار از بالای قفل زرد ، از موچین استفاده کنید.
اتصال ZIF زرد را باز کنید.
نوار را به طور کامل از پنل پشتی جدا کنید.
با از بین بردن هشت پیچ 2 میلیمتری با پیچ گوشتی JIS # 000 ، محفظه را از لبه های صفحه جدا کنید.
صفحه را بالا بکشید تا آن را بلند کنید.

مرحله هفتم : بازکردن فن ASUS X541l
بعد از باز کردن صفحه کلید مرحل زیر را دنبال کنید .
برای بلند کردن و دسترسی به قسمت پشتی مادربرد ، نیاز به برداشتن باتری و هم آداپتور هارد دیسک pcb دارید.
هشت پیچ فیلیپس شماره 0 را از باتری و چهار پیچ فیلیپس # 0 از آداپتور هارد دیسک PCB جدا کنید.
درایو سی دی را با شل کردن پیچ تنها ۴ میلی متر فیلیپس # ۰ جدا کرده و درایو را از مادربرد دور کنید.
دو آنتن را که به کارت شبکه وصل شده اند ، جدا کنید.
هفت پیچ ۴ میلی متری فیلیپس # ۰ را که مادربرد را ، بردارید.
مادربرد را به سمت بالا بکشید ،.مادربرد هنوز به دو سیم متصل خواهد بود ، اما حذف این سیم ها برای دسترسی به فن ASUS X555 ضروری نیست.
کابل 4 پین PWM را که فن را به پشت مادربرد وصل می کند ، جدا کنید. اکنون فن می تواند به سادگی با کشیدن فن از لوله گرمای مس جدا کنید

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
