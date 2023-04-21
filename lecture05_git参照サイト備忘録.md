### ec2にrailsアプリをクローンしデプロイする。

組み込みサーバーでの動作確認-rails環境構築

- Rubyのインストール

・ ec2にssh接続後
- ec2-user@ip-172-31-39-23　$ sudo yum update -y
・ gitのインストール
- $ sudo yum install git -y
・ rbenvをリポジトリからクローン
- $ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
・ クローンしてきたらrbenvのPATHを通す
- $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
- $ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
- $ source ~/.bash_profile
・ rbenvのバージョンが表示されればインストールは成功
- $ rbenv -v

・ ruby-buildのインストール
・ リポジトリからクローン
- $ git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
- インストールの実行
- $ cd ~/.rbenv/plugins/ruby-build
- $ sudo ./install.sh
・ インストール可能なRubyのバージョン一覧が表示されればruby-buildのインストールは成功
- $ rbenv install -l

・ Rubyのインストール
・ Rubyインストールに必要なパッケージをインストール
- $ sudo yum -y install gcc-c++ glibc-headers openssl-devel readline libyaml-devel readline-devel zlib zlib-devel libffi-devel libxml2 libxslt libxml2-devel libxslt-devel sqlite-devel
・ benvでバージョンを指定してRubyをインストール（けっこう時間かかる）
- $ rbenv install 3.1.2
・ 今回の課題ではバージョン3.1.2をインストール
・ rbenvで使用するRubyのバージョンを指定
- $ rbenv global 3.1.2

・ bundlerのインストール
- $ gem install bundle
$-  bundler -v

・ railsのインストール
- $ gem install rails

・ nvmのインストール
- $ git clone https://github.com/creationix/nvm.git ~/.nvm

・ Node.jsをインストール

・ AWSのリポジトリに追加
- [ec2-user@ip-xxxxxxx]$ curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
・ インストール
- [ec2-user@ip-xxxxxxx]$ sudo yum -y install nodejs
・ コマンド実行後、「完了しました！」と表示されば無事インストールされてる

・ yarnのインストール
- $ npm install yarn -g
・ version確認
- $ yarn -v

・ 手動でのコンパイル
- $ bundle exec rails assets:precompile RAILS_ENV=development

・ database.ymlの編集

- default: &default
- adapter: mysql2
- encoding: utf8mb4
- pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>  
- username: admin ←RDSのusernameに変更
- password: abcdefg123456789　←RDSのパスワードに変更
- host: database-2.cab8a84fusu9.ap-northeast-1.rds.amazonaws.com  ←RDSのエンドポイントを追記

- development:
  <<: *default
  database: raisetech_live8_sample_app_development
  *sockは削除する
  
 アプリケーション階層で　$ rails db:create及びrails db:migrateを実施
 
 $ rails s -b 0.0.0.0を実行後　elastic ipアドレスをブラウザで入力すると接続できる







### git 参照サイト

https://prog-8.com/docs/git-env

https://dormouse666.hatenablog.com/entry/2016/04/04/020559

https://itc.tokyo/best-environment/upload-to-github/

https://qiita.com/ktakita1011/items/3c16f0e0f7f3763c23d3

https://qiita.com/Takao_/items/5e563d5ea61d2829e497

https://codelikes.com/git-push/

https://www-creators.com/archives/1290#Push

https://qiita.com/rch1223/items/9377446c3d010d91399b
