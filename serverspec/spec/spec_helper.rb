require 'serverspec'
require 'net/ssh'

# ターゲットホストにSSHで接続するための設定
host = 'TARGET_EC2_IP_ADDRESS' # ここにターゲットEC2のIPアドレスを指定
user = 'ec2-user'  # 接続に使うユーザー名
key  = '~/.ssh/your_private_key.pem'  # 秘密鍵のパスを指定

# SSHの設定
options = Net::SSH::Config.for(host)
options[:user] = user
options[:keys] = [key]
options[:port] = 22  # デフォルトのSSHポート

# ServerspecのバックエンドをSSHに設定
set :backend, :ssh
set :host, host
set :ssh_options, options

