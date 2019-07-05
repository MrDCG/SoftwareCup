## 项目相关配置

#### 边缘端—demoSend：
- 点击编辑“exec.bat”中的第三行，改为自己电脑的用户名称；或者保证“C:\Users\lab”路径存在，点击运行"SendClient.exe"开始运行。
- 点击运行“exec.bat”可以检验环境是否已经部署完成；如果程序正常运行表示部署成功，否则根据提示报错安装相应的包。成功之后按`ctrl+c`中断程序运行。
- python版本与包：python3.6、pyqt5、opencv3、pytorch-0.3.1-py36_cuda90_cudnn7、torchvision、cuda9.0、cudnn7。

***
#### 边缘云端（服务器端）—demoReceive ：
- 点击运行"ReceiveServer.exe"即可，如果数据库连接失败，点击弹出的提示框的取消按钮，点击“设置”，进行数据库的连接属性的修改。

***
#### web端
- **Tomcat配置**：
  - 版本：9.0.19

  - 1、将项目中的tomcat解压到本地，打开解压的Tomcat找到 jre-9.0.4文件夹，复制该绝对路径，然后找到 bin目录下的startup.bat（运行文件）和shutdown.bat（关闭文件），点击编辑并加入下面语句：
    `SET JAVA_HOME=jre-9.0.4的绝对路径`
    `SET TOMCAT_HOME=Tomcat的路径`

  - 2、将下面语句放入tomcat的conf目录下的server.xml文件的<Host></Host>中
    `<Context path="/Videos"  docBase="D:\软件杯\demoReceive\Videos" debug="0" reloadable="true"/>`。

    其中`D:\软件杯\demoReceive\Videos`为异常视频存放地址，需修改为`demoReceive`的绝对路径 （`..\demoReceive\Videos`）。

  - 3、将`Software-cup001.war`文件放在tomcat下的`webapps`文件夹下，运行tomcat。

***
#### MySQL数据库

- 版本：5.7.22
- 数据库名：`softwarecup001`
- 运行`softwarecup001.sql` 将表结构和数据添加到`softwarecup001`库中。
***