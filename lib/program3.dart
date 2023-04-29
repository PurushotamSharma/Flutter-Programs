import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          Expanded(child: Column(
            children: [
              Image.asset('assets.image1.jpg'),
              Image.asset('assets.image2.jpg'),
              Image.asset('assets.image3.jpg'),
            ],
          )),
          // Expanded(child: Column(
          //   children: [
          //     Image.network("https://www.google.com/search?q=images&sxsrf=APwXEddVdn5WZtonQLSm30dvzNIBO3cWDg:1682605551492&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiDiMaRosr-AhU6SmwGHVaUDqoQ_AUoAXoECAIQAw&biw=1536&bih=750&dpr=1.25#imgrc=9SPhZ2nyEGps3M"),
          //     Image.network("https://www.google.com/search?q=images&sxsrf=APwXEddVdn5WZtonQLSm30dvzNIBO3cWDg:1682605551492&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiDiMaRosr-AhU6SmwGHVaUDqoQ_AUoAXoECAIQAw&biw=1536&bih=750&dpr=1.25#imgrc=ISsdmwh92GPtrM"),
          //   ],
          // ))
        ],
      );
  }

}