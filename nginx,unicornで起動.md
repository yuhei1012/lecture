# Nginx,unicornのインストール(今回はunicornはインストール済）

参考サイト

## https://qiita.com/e-onm/items/0814b6c4db395e331df1

## https://qiita.com/miriwo/items/56f746e4f9b7eac75d6b

## https://motolog.me/amazonlinux2-rails-nginx-unicorn/




# 起動画面 (nginx,unicorn起動画面と同一)

https://github.com/yuhei1012/lecture/blob/lecture05_img/img:%E7%B5%84%E3%81%BF%E8%BE%BC%E3%81%BF%E3%82%B5%E3%83%BC%E3%83%90%E3%83%BC%E8%B5%B7%E5%8B%95%E7%A2%BA%E8%AA%8D.png

nginx起動・停止参考サイト
## https://gakumon.tech/nginx/nginx_service.html
unicorn起動・停止参考サイト
## https://blog.naichilab.com/entry/2015/12/05/230828

　# nginxとunicornはapp階層で実行すること！
　
# ハマったエラー

設定後Elastic IPをブラウザで確認したが下記の画像となった

<img width="1206" alt="スクリーンショット 2023-02-09 22 39 55" src="https://user-images.githubusercontent.com/102453302/224464373-975af25f-bc36-4ec2-92d0-24e557042820.png">

原因はnginxとunicornの起動コマンドを正しい階層で実行していないからだった
ec2のapp階層ではなく[ec2-user@ip-172-31-39-23 ~]で起動させていた。

そのため下記エラーが発生していた

<img width="1221" alt="スクリーンショット 2023-02-06 12 44 13" src="https://user-images.githubusercontent.com/102453302/224464618-381f2d9f-d0f8-4eb3-89d0-c50f36b444a7.png">

原因が分からず設定に関するサイトばかり調べていたが一向に解決できなかった。


確認していたサイト

## https://qiita.com/Takao_/items/e7d3c79154a817625b95

## https://qiita.com/kodai_0122/items/c4c13e89dd5c4cba1f32

## https://qiita.com/naota7118/items/4fe2578fec561795a960

## https://qiita.com/tabimoba/items/858f63dab61d03287385

## https://qiita.com/Dragon-taro/items/fcd987f27c718627f123



