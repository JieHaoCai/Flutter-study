import 'package:flutter/material.dart';

class LeftDraw extends StatefulWidget {
  const LeftDraw({super.key});

  @override
  State<LeftDraw> createState() => _LeftDrawState();
}

class _LeftDrawState extends State<LeftDraw> {
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      width: 250,
      child: Column(
        children: [
          //自定义头部
          // Row(
          //   children: [
          //     Expanded(
          //       child: DrawerHeader(
          //           decoration: BoxDecoration(
          //               // color: Colors.yellow,
          //               image: DecorationImage(
          //                   image: NetworkImage(
          //                       "https://www.itying.com/images/flutter/2.png"),
          //                   fit: BoxFit.cover)),
          //           child: Column(
          //             children: [
          //               ListTile(
          //                 leading: CircleAvatar(
          //                   backgroundImage: NetworkImage(
          //                       "https://www.itying.com/images/flutter/3.png"),
          //                 ),
          //                 title: Text(
          //                   "张三",
          //                   style: TextStyle(color: Colors.black, fontSize: 24),
          //                 ),
          //               )
          //             ],
          //           )),
          //     )
          //   ],
          // ),

          //官方个人信息头部
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                          // color: Colors.yellow,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.itying.com/images/flutter/2.png"),
                              fit: BoxFit.cover)),
                      accountName: Text("蔡杰浩"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.itying.com/images/flutter/3.png"),
                      ),
                      accountEmail: Text("12313131313@qq.com")))
            ],
          ),

          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.people),
            ),
            title: Text("个人中心"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.wallet),
            ),
            title: Text("钱包"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.propane_outlined),
            ),
            title: Text("客服"),
          )
        ],
      ),
    );
  }
}
