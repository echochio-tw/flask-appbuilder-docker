# flask-appbuilder-docker

建立 image
```
docker build -t myweb .
```

docker run 把服務起起來
```
docker run -d -p 8000:80 --name=myweb myweb
```

打上你的 http://你的IP:8000/ 就完成囉
```
user:admin
pass:admin
```
