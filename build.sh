image=swr.lan.aiminjie.com/amj/chatgpt-web-share
tag=1.0
docker build -t $image:$tag . --build-arg https_proxy=http://192.168.231.1:7898
if [ $? -ne 0 ]; then
    exit $?
fi
docker push $image:$tag

