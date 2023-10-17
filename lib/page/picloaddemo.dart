import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MyPic extends StatelessWidget {
  const MyPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Fade in images"),
        ),
        body:
            // Stack(
            //   children: <Widget>[
            //     const Center(child: CircularProgressIndicator()),
            //     Center(
            //       child: FadeInImage.memoryNetwork(
            //         //这里还能使用本地的图片进行占位
            //         placeholder: kTransparentImage,
            //         image: 'https://www.itying.com/images/flutter/2.png',
            //       ),
            //     ),
            //   ],
            // ),
            PageView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: [
                const Center(child: CircularProgressIndicator()),
                Center(
                  child: FadeInImage.memoryNetwork(
                    //这里还能使用本地的图片进行占位
                    placeholder: kTransparentImage,
                    image: 'https://www.itying.com/images/flutter/2.png',
                  ),
                )
              ],
            ),
            Stack(
              children: [
                const Center(child: CircularProgressIndicator()),
                Center(
                  child: FadeInImage.memoryNetwork(
                    //这里还能使用本地的图片进行占位
                    placeholder: kTransparentImage,
                    image: 'https://www.itying.com/images/flutter/3.png',
                  ),
                )
              ],
            ),
            Stack(
              children: [
                const Center(child: CircularProgressIndicator()),
                Center(
                  child: FadeInImage.memoryNetwork(
                    //这里还能使用本地的图片进行占位
                    placeholder: kTransparentImage,
                    image: 'https://www.itying.com/images/flutter/4.png',
                  ),
                )
              ],
            ),
            Stack(
              children: [
                const Center(child: CircularProgressIndicator()),
                //后面的会覆盖掉前面的
                Center(
                  child: FadeInImage.memoryNetwork(
                    //这里还能使用本地的图片进行占位
                    placeholder: kTransparentImage,
                    image: 'https://www.itying.com/images/flutter/5.png',
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
