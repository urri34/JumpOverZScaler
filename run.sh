docker start `docker ps -a|grep urri34/firefox-boxed|awk '{print $1}'`
docker exec -it `docker ps -a|grep urri34/firefox-boxed|awk '{print $1}'` sed -E 's/^(abc:x:911:)911/\1995/' /etc/passwd -i
docker exec -it `docker ps -a|grep urri34/firefox-boxed|awk '{print $1}'` su -c firefox abc
