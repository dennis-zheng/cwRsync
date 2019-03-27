::slave更新到master, 建议做成服务,1小时运行一次bat文件
::更新slave目录下的全部文件
set dateT=%date:~0,10%
set "dateT=%dateT:-=%"
set "dateDS=%dateT:/=%"

c:
cd C:\Program Files\cwRsync\bin
rsync -avzP --progress --delete --exclude=%dateDS% /cygdrive/d/dennis/slave rsync://192.168.1.251:8173/dennis