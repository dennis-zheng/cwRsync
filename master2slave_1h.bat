::master 更新到 slave, 建议做成服务,1小时运行一次bat文件
::更新master目录下的全部文件
set dateT=%date:~0,10%
set "dateT=%dateT:-=%"
set "dateDS=%dateT:/=%"

c:
cd C:\Program Files\cwRsync\bin
rsync -avzP --progress --delete --exclude=%dateDS% rsync://192.168.1.11:8173/dennis/master /cygdrive/d/dennis