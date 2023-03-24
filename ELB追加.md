ELBの追加

# 参考サイト
https://zenn.dev/ito110/scraps/5031f7ce7b92cf

https://dev.classmethod.jp/articles/sales-ec2-elb-session/

https://nishinatoshiharu.com/ec2-with-alb-setting/#_EC2nginx

エラー時の閲覧サイト
https://zenn.dev/tikka/articles/6109990725a0f417d058


# ロードバランサーの　DNSNameをブラウザに入力後

https://github.com/yuhei1012/lecture/blob/lecture05_img/img:%E3%83%AD%E3%83%BC%E3%83%89%E3%83%90%E3%83%A9%E3%83%B3%E3%82%B5%E3%83%BC%E3%80%80%E5%B0%8E%E5%85%A5.png



# ロードバランサー追加時にハマったエラー

・ターゲットグループのHealth statusでunhealthy
<img width="995" alt="スクリーンショット 2023-02-12 12 26 44" src="https://user-images.githubusercontent.com/102453302/224463197-78918579-1a10-4e61-a22b-d49849656127.png">

<img width="1270" alt="スクリーンショット 2023-02-18 13 07 38" src="https://user-images.githubusercontent.com/102453302/224463221-4408e6ef-400e-4704-ac0e-c801b350d9bf.png">

# エラー解消
設定後にnginxとunicornを再起動してみたらhealthyとなり解消した
*再起動をしないでエラーコードを延々調べて時間を要してしまった。
