#Gitbucket on Docker
Gitbucket起動用Dockerfile

##概要
Gitbucketを簡易起動する構成のDockerfileです。

##外部からアクセスするための情報
- 使用するポート番号は、8080です
- データの保存箇所は/opt/gitbucketとなっています

##起動方法
以下のようなコマンドで実行します。
```
docker run -d --name='gitbucket' -p 8080:8080 -v /opt/docker/data/gitbucket:/opt/gitbucket minanon/gitbucket
```

