require 'serverspec'
require 'net/ssh'

# SSH接続の設定
set :backend, :ssh

# EC2インスタンスの情報を設定
host = ENV['EC2_PUBLIC_IP']  # 環境変数からEC2のパブリックIPを取得

# ~/.ssh/configからホスト設定を読み込む
options = Net::SSH::Config.for(host)

# IdentityFileの設定がない場合に手動で設定
options[:user] ||= 'ec2-user'  # デフォルトユーザーを指定
options[:keys] = [ENV['SSH_KEY_PATH']] unless options[:keys]  # SSHキーを指定
options[:keys_only] = true
options[:auth_methods] = ['publickey']
options[:verify_host_key] = :never

set :host, host
set :ssh_options, options


