import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class multimeter_work_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<multimeter_work_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/ts0EVc9vXcs';
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
              title: const Text('کار با تجهیزات اندازه گیری'),
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
                      '''یکی از ترمینال ها (پایین ترین ترمینال) که با علامت COM مشخص شده، به معنای پایه مشترک (منفی) است و در همه اندازه گیری ها باید پراب مشکی رنگ به این ترمینال متصل باشد.
ترمینال بعدی (ترمینال وسط) با علامت VΩmA مشخص شده و وقتی می خواهید، ولتاژ، اهم (مقاومت) و جریان های کوچک در حد میلی آمپر را اندازه گیری کنید، باید پراب قرمز رنگ را به این ترمینال متصل کنید.
ترمینال سوم با علامت ۱۰A مشخص شده است. وقتی میخواهید جریان های نسبتاً بزرگی در حد ۵۰۰ میلی آمپر تا ۱۰ آمپر را اندازه گیری کنید، باید پراب قرمز رنگ را از ترمینال VΩmA جدا کنید و به ترمینال سوم یعنی ۱۰A وصل کنید. توجه داشته باشید که مولتی متر بالا فقط قابلیت اندازه گیری، جریان DC (مستقیم) را دارد و نمی تواند جریان های متناوب را اندازه گیری کند.
حداکثر جریانی که مولتی متر بالا می تواند اندازه گیری کند، ۱۰ آمپر است و اگر جریانی بیشتر از دستگاه عبور کند، دستگاه خواهد سوخت.
روش اندازه گیری ولتاژ ثابت با ولت متر:
کلید سلکتوری روی مولتی متر را آنقدر بچرخانید که روی محدوده ولتاژ ثابت قرار گیرد. از آنجایی که قصد داریم تا ولتاژ یک باتری کوچک را اندازه گیری کنیم پس باید کلید سلکتوری روی مقدار ۲۰ قرار گیرد (البته می توانید کلید سلکتوری را روی ۲۰۰۰m هم قرار دهید.)

همانطور که می بینید پراب قرمز رنگ به ترمینال VΩmA و پراب مشکی به ترمینال COM وصل شده. آنگاه در سمت دیگر پراب قرمز رنگ را به قطب مثبت باتری و پراب مشکی رنگ را به قطب منفی وصل کرده ایم و عدد ۱.۵ روی نمایشگر مولتی متر نشان داده شده است. اگر جای پراب قرمز و مشکی را در دو سر باتری جابجا وصل کنید، عدد ۱.۵- (منفی) نمایش داده می شود. که این علامت منفی نشان دهنده این است شما جای پراب مثبت و منفی را جابجا متصل کرده‌اید.

روش اندازه گیری جریان با آمپر متر:
فرض کنید که در مدار زیر، قصد داریم که جریان عبوری از این ال ای دی های خطی را اندازه گیری کنیم. در این مدار ۳ ال ای دی خطی تختِ یک متری قرار گرفته است.

روش اندازه گیری مقاومت با اهم متر:
این بار قصد اندازه گیری مقدار یک مقاومت را داریم. پس پراب قرمز رنگ را از ترمینال قبلی خارج می کنیم و به ترمینال VΩmA متصل می کنیم. پراب مشکی رنگ هم طبق صحبت های قبلی همیشه باید به ترمینال COM متصل باشد. آنگاه کلید سلکتوری را آنقدر بچرخانید تا به محدوده اندازه گیری مقاومت برسد. از آنجایی که نمی دانیم اندازه این مقاومت چند اهم است، پس از بالاترین مقدار شروع می کنیم، در صورتی که اعداد نامفهومی در صفحه نمایش نشان داده شد، کلید سلکتوری را روی مقادیر کمتر قرار می دهیم.

ھنگام خواندن مقدار مقاومت به نكات زیر توجه كنید:
در مولتی متر ۳ حرف اختصاری وجود دارد که عبارتند از m , K , M
m معنای میلی است یعنی عدد نمایش داده شده باید در ۰/۰۰۱ ضرب شود.
K به معنای کیلو است یعنی عدد نمایش داده شده باید در ۱۰۰۰ ضرب شود.
M به معنای مگا است یعنی عدد نمایش داده شده باید در ۱۰۰۰۰۰۰ ضرب شود.

از آنجایی که در تصویر بالا، کلید سلکتوری روی مقدار ۲۰۰۰k قرار گرفته است و حرف اختصاری k، مخفف کیلو است، پس عدد نمایش داده شده (۳۹۰) را باید در ۱۰۰۰ ضرب کنیم. در این صورت مقدار ۳۹۰۰۰۰ بدست می آید. یعنی این مقاومت ۳۹۰ هزار اهم است.

رنج بازر (بیزر):

از آنجایی که دانستن این بخش خیلی به درد یک برقکار می خورد، بد نیست که این مورد را هم یاد بگیرید. زیرا برای پیدا کردن سیم های تلفن و آیفون در برق ساختمان خیلی به کارتان می آید.
روی بیشتر مولتی مترها گزینه ای هست که علامت یک زنگ یا یک بلندگوی درج شده که در تصویر بالا آن را با محدوده رنج بازر مشخص کرده ایم.
فرض کنید که داخل یک لوله برق ۱۰ رشته سیم وجود دارد که همه آنها همرنگ هستند، و شما می خواهید از بین این ۱۰ رشته سیم، ۲ تا از آنها را مشخص کنید، کاری که می کنید این است که از یک سمت، سر آن دو سیم را لخت می کنید و به هم اتصال می دهید و از سمت دیگر مولتی متر را روی حالت تست بازر قرار می‌دهید و پراب ها را به صورت ۲ به ۲ و تصادفی روی تمام سیم ها تست می کنید. هر جا که مولتی متر به صدا درآمد، یعنی آن دو رشته سیم همان دو رشته سیمی هستند که از سمت دیگر به هم متصل شده اند.

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
