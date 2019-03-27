::master 更新到 slave, 建议做成服务,30秒运行一次bat文件
::更新master目录下的当天目录
set dateT=%date:~0,10%
set "dateT=%dateT:-=%"
set "dateDS=%dateT:/=%"
set "src=rsync://192.168.1.11:8173/dennis/master/%dateDS%"
set "dst=/cygdrive/d/dennis/master"

c:
cd C:\Program Files\cwRsync\bin
rsync -avzP --progress --delete %src% %dst%