import 'package:flutter/material.dart';

// 引入外部页面
import './tabs/home.dart';
import './tabs/categroy.dart';
import './tabs/setting.dart';
import './tabs/message.dart';
import './tabs/user.dart';
import './search.dart';

//引入左侧栏
import './drawer/leftdraw/leftdraw.dart';

//引入顶部滑动导航栏

class MyTabs extends StatefulWidget {
  const MyTabs({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //生命周期函数：当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  int _currentIndex = 0;
  // 引入其他页面
  final List<Map<String, dynamic>> _pages = const [
    {"title": '首页', "component": HomePage(), "icon": Icons.home},
    {"title": '分类', "component": CatrgroyPage(), "icon": Icons.category},
    {"title": '消息', "component": MessagePage(), "icon": Icons.message},
    {"title": '设置', "component": SettingPage(), "icon": Icons.settings},
    {"title": '用户', "component": UserPage(), "icon": Icons.person}
  ];

  @override
  Widget build(BuildContext context) {
    //跳转页面(基本路由跳转)
    void navigata() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        //跳转并传参
        return const SearchPage(
          title: '你好',
        );
      }));
    }

    return Scaffold(
      //配置左侧侧边栏
      drawer: const LeftDraw(),
      //配置右侧侧边栏
      endDrawer: const Drawer(
        child: Text("右侧栏"),
      ),

      appBar: AppBar(
        title: Text(_pages[_currentIndex]['title']),
        backgroundColor: Colors.red,

        //右侧图标
        actions: [
          IconButton(
              onPressed: () {
                navigata();
                print("搜索");
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("更多");
              },
              icon: const Icon(Icons.more_horiz)),
        ],
        bottom: TabBar(
            //是否可以滚动
            isScrollable: true,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text('关注'),
              ),
              Tab(
                child: Text('新闻'),
              ),
              Tab(
                child: Text('财经'),
              )
            ]),
        // //左侧按钮图标
        // leading: IconButton(
        //     onPressed: () {
        //       print("左侧");
        //     },
        //     icon: const Icon(Icons.menu)),
        //配置顶部导航栏
      ),
      body: _pages[_currentIndex]['component'],
      // body: TabBarView(
      //   controller: _tabController,
      //   children: [
      //     ListView(
      //       children: const [
      //         ListTile(
      //           title: Text("我是关注列表"),
      //         ),
      //       ],
      //     ),
      //     ListView(
      //       children: const [
      //         ListTile(
      //           title: Text("我是新闻页面"),
      //         ),
      //       ],
      //     ),
      //     ListView(
      //       children: const [
      //         ListTile(
      //           title: Text("我是财经页面"),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
      //浮动按钮
      floatingActionButton: Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: FloatingActionButton(
            backgroundColor: _currentIndex == 2 ? Colors.red : Colors.blue,
            onPressed: () {
              setState(() {
                _currentIndex = 2;
              });
            },
            child: const Icon(Icons.add),
          )),
      //配置浮动按钮布局
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        //如果底部有4个或者以上的需要配置这个参数
        type: BottomNavigationBarType.fixed,
        // 默认选中的下标
        currentIndex: _currentIndex,
        // 这里改变值需要调用 setState
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _pages.map((page) {
          return BottomNavigationBarItem(
            icon: Icon(page['icon']),
            label: page['title'],
          );
        }).toList(),
      ),
    );
  }
}
