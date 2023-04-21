# 組み込みサーバー動作確認

![img](lecture05/img:組み込みサーバー起動確認.png)


# インバウンドルール設定画
![img](lecture05/img:インバウンドルール設定画面.png)


# database.yml設定画面

![img](lecture05/img:datebase.yml設定画面.png)

参考サイト
rails デプロイ
- https://prettytabby.com/ec2-ruby-install/

- https://pikawaka.com/rails/ec2_deploy

- https://nishinatoshiharu.com/rails-ec2-rds/#Nodejs

- https://qiita.com/NaokiIshimura/items/8203f74f8dfd5f6b87a0

- https://qiita.com/H-Toshi/items/9fbd2946b3cf3325e92eer

rails server起動

- https://teleporter.hateblo.jp/entry/rails-port-num

rails puma起動したまま終了させて場合

- https://qiita.com/daichi0713/items/4baadd537a3213c4b30d

rootユーザーへの切り替え

- https://www.bioerrorlog.work/entry/session-manager-ec2-user
- https://eng-entrance.com/linux-root#:~:text=%E6%96%B9%E6%B3%95%E3%81%8C%E7%95%B0%E3%81%AA%E3%82%8B%E3%80%82-,su,root%E3%81%AE%E3%83%91%E3%82%B9%E3%83%AF%E3%83%BC%E3%83%89%E3%80%8D%E3%81%A7%E3%81%82%E3%82%8B%E3%80%82



ファイルの移動・名前の変更

- https://www.ibm.com/docs/ja/aix/7.2?topic=files-moving-renaming-mv-command

viコマンド

- https://eng-entrance.com/linux-command-vi

rubyのバージョン

- https://kiraba.jp/install-rbenv-swich-ruby-versions/

- https://scuration.hateblo.jp/entry/2020/05/10/213000

- https://qiita.com/Rairu_blog/items/56b84f5df95ba717f4be

mysqlパスワード変更

- https://www.sejuku.net/blog/83286


ループバックアドレス及びipアドレスについて　サブネットについて

- https://atmarkit.itmedia.co.jp/ait/articles/0610/14/news021.html

- https://www.itmanage.co.jp/column/host-name/

- https://tech.excite.co.jp/entry/2022/06/14/132710

アセットプリコンパイルエラー

- https://mebee.info/2021/01/19/post-27981/　　　(今回productionは関係ない)

- https://qiita.com/uma002/items/9a94ebc93c5f937502cd  　(今回productionは関係ない)

YAML構成エラー
- https://ichigick.com/rails-db-error/

- https://qiita.com/furikake6000/items/2be2752d2a803474ee42

- https://qiita.com/Yuya-hs/items/dcba6857fa1d86eee6d3


linuxコマンド

- https://qiita.com/naogify/items/a6d49eebeedb58b6170f

VPCフローログ

- https://qiita.com/naogify/items/a6d49eebeedb58b6170f

nslookコマンドについて

- https://milestone-of-se.nesuke.com/sv-basic/windows-basic/nslookup/

ec2とRDSについて

- https://qiita.com/fftcy-sttkm/items/03ef8d9ef7f1650b1a10

- https://blog.serverworks.co.jp/ec2-to-private-rds

- https://www.google.com/search?q=ec2%E3%81%A8rds+http%E9%80%9A%E4%BF%A1&tbm=isch&ved=2ahUKEwivsd34vLr8AhXLAqYKHfF7ANUQ2-cCegQIABAA&oq=ec2%E3%81%A8rds+http%E9%80%9A%E4%BF%A1&gs_lcp=CgNpbWcQAzoECCMQJ1CXBVjtM2DLOmgAcAB4AIABhQGIAfgKkgEDOC42mAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=0ga8Y6-AFsuFmAXx94GoDQ&bih=721&biw=1280&rlz=1C5CHFA_enJP972JP972#imgrc=pBVBWkid36NzcM

- https://style.potepan.com/articles/8945.html

- https://abillyz.com/moco/studies/119

アプリの削除

- https://qiita.com/nyanyamo/items/1469b7989db2d454dd94


### 時間が掛かったハマったエラー

設定後　app 階層で$ rails sコマンドでずっと確認していた。ブラウザでは下記の画面になり接続できなかった。
オプションを加えることで解消されるがここでかなり時間を要してしまった。
＊rails s -b 0.0.0.0 今回はこちらのオプションを使用

![img](lecture05/img:組み込みサーバーエラー.png)
