ELBの追加

# 参考サイト
https://zenn.dev/ito110/scraps/5031f7ce7b92cf

https://dev.classmethod.jp/articles/sales-ec2-elb-session/

https://nishinatoshiharu.com/ec2-with-alb-setting/#_EC2nginx

エラー時の閲覧サイト
https://zenn.dev/tikka/articles/6109990725a0f417d058


# ロードバランサーの　DNSNameをブラウザに入力後

![image](https://github.com/yuhei1012/lecture/blob/lecture05_img/img:%E3%83%AD%E3%83%BC%E3%83%89%E3%83%90%E3%83%A9%E3%83%B3%E3%82%B5%E3%83%BC%E3%80%80%E5%B0%8E%E5%85%A5.png)



# ロードバランサー追加時にハマったエラー

・ターゲットグループのHealth statusでunhealthy

![image](https://github.com/yuhei1012/lecture/blob/lecture05_img/img:%E3%83%AD%E3%83%BC%E3%83%89%E3%83%90%E3%83%A9%E3%83%B3%E3%82%B5%E3%83%BC%E5%B0%8E%E5%85%A5%E6%99%82%3%81%AE%E3%82%A8%E3%83%A9%E3%83%BC1.png)

![image](https://github.com/yuhei1012/lecture/blob/lecture05_img/img:%E3%83%AD%E3%83%BC%E3%83%89%E3%83%90%E3%83%A9%E3%83%B3%E3%82%B5%E3%83%BC%E5%B0%8E%E5%85%A5%E6%99%82%E3%82%A8%E3%83%A9%E3%83%BC2.png)

# エラー解消
設定後にnginxとunicornを再起動してみたらhealthyとなり解消した
*再起動をしないでエラーコードを延々調べて時間を要してしまった。
