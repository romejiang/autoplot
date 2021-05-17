# autoplot
Chia的P盘工具，支持滚动P盘，修改参数和环境不需要停止当前的任务。


### 安装

```
get clone 

# 复制配置

cp config.mac config

# 修改配置文件

vim config

# 开始p盘
./autoplot plot 

# 修改配置，等待现有任务完成，会自动按新的配置执行任务。

vim config


```


### 配置文件说明

```

NAME=Genesis  ## 设备名字
SLEEP=1800    ## 任务之间的间隔
TASK=3        ## 总任务数
N=Liuren      ## P和F值的名字，没有实际用处，用来显示和标注当前P盘的key是谁的。

LOG=logs      ## 日志目录，默认在当前目录下
## chia的命令位置，linux ，win10 都会不同
APP=/Applications/Chia.app/Contents/Resources/app.asar.unpacked/daemon/chia
B=3390        ## 内存，建议不要改
R=2           ## 线程数，建议不要改，单核性能特别差的可以改成3-4。（用Geekbench测试，单核性能低于1000的）

T=/Volumes/2T/cache    ## 缓存地址
D=/Volumes/plots       ## P盘最终地址

P=b35a729c8d6dd8866af2fd300603edfe28d99a2653275f7abd88e0a9e619b841d221f0a03f20f70feedf543624acf810
F=b752b01e97f628a0caf838f502c9e7b414710d13c4878e3eafd8ee74788ae9d7386d12bdbeef28c114ed771595c74d94


```

### 命令说明

```
./autoplot plot ## 开始自动p盘

./autoplot  # 查看进度详细日志

./autoplot all # 查看完成日志

./autoplot today # 查看今天完成的任务

./autoplot kill # 停止自动p盘，并删除缓存目录

```
