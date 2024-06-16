1.创建sh脚本 ，内容如下:

echo "======== start clean docker containers logs ========"

logs=$(find /var/lib/docker/containers/ -name *-json.log)

for log in $logs
        do
                echo "clean logs : $log"
                cat /dev/null > $log
        done

echo "======== end clean docker containers logs ========"


2.给脚本加权限
chmod +x clean_docker_log.sh


3.执行脚本（切到脚本所在目录）
./clean_docker_log.sh
