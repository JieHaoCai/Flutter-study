# Flutter



**如果你直接安装flutter就不需要安装dart了，因为flutter已经包含了dart环境了**

所以推荐直接按照flutter即可



## 安装dart

首先你需要先安装homebrew，homebrew是一个软件资源包管理工具

### 安装homebrew

#### 外网环境

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```



#### 推荐国内镜像

```
/bin/bash -c "$(curl -fsSL https://gitee.com/wejectchan/brew/raw/master/install.sh)"
```



### 安装dart

```dart
brew tap dart-lang/dart
brew install dart
```



## 安装Flutter

苹果电脑芯片有两种，一种是intel芯片（X86），一种是M系列芯片（Arm）

### 查看系统芯片

```
uname -a
```



**注意安装一定要根据系统芯片来安装**



具体查看

```
https://flutter.cn/docs/get-started/install/macos
```



#### **第一步先下载对应系统版本的压缩包**

##### Intel芯片

```
intel：https://storage.flutter-io.cn/flutter_infra_release/releases/stable/macos/flutter_macos_3.13.7-stable.zip
```



##### M系列芯片

```
https://storage.flutter-io.cn/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.13.7-stable.zip
```



#### **第二步解压到某一个文件路径**

```
 cd ~/development
 unzip ~/Downloads/flutter_macos_3.13.7-stable.zip
```



#### **第三步配置环境变量**

```
export PATH="$PATH: 文件路径/flutter/bin"
```

这里需要注意，这样配置仅仅在当前命令窗生效，要永久生效则需要配置到shell文件中



##### **永久配置具体看这里**

```
https://flutter.cn/docs/get-started/install/macos#update-your-path
```

```
打开或者创建 shell 的 rc 文件，比如，在 Linux 和 macOS Mojave 或 Mojave 之前的系统里，是默认使用 Bash 的，所以需要修改 $HOME/.bashrc 文件。 macOS Catalina 操作系统默认使用 Z Shell，所以需要修改 $HOME/.zshrc 文件。请知晓，如果你使用不同的 shell，文件目录或文件名可能会有所不同。
```

```
老旧的版本
vim ~/.bash_profile 
或者open ~/.bash_profile


最新版的系统都使用zshrc 
vim ~/.zshrc 
或者open ~/.zshrc


export PATH="$PATH: 文件路径/flutter/bin"
source $HOME/.bash_profile 来刷新当前命令行窗口。
```

```
通过运行以下命令来验证 flutter/bin 文件夹是否已经添加到 PATH 环境变量中：
 echo $PATH
```

```
验证 flutter 命令是否可用，可以执行下面的命令检测：
which flutter
```



### 安装苹果模拟器

你只需要从应用商店下载Xcode进入之后会提示你下载模拟器，按要求下载即可



不过通常会下载失败，因为模拟器镜像在国外，如果你有苹果开发者帐号可以通过抓取下载链接的形式去进行直接下载



没有开发者帐号下载失败就多次重试，一般3到4次即可



## 开发工具

可以使用vscode或者Xcode（苹果）||Android Studio（安卓）





## 推荐使用VScode

使用vscode可以在扩展中搜索flutter相关扩展和dart，以便代码提示和自动导入文件



```
Dart

Flutter

Awesome Flutter Snippets
```





# 创建项目



如果你有Xcode或者Android Studio，直接创建Flutter项目即可



如果你是用vscode则需要使用命令行去进行创建

```
flutter create flutter02
code .
flutter run
flutter devices //使用真机运行
```



最重要的就是**lib文件夹**以及**pubspec.yaml**文件，平台文件一般不需要理会



我们编写代码都是在lib文件夹下进行编写



![image-20231012112958050](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20231012112958050.png)

	
  	