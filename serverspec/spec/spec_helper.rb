require 'serverspec'
require 'net/ssh'

# ターゲットホストにSSHで接続するための設定
host = '52.196.170.136' # ここにターゲットEC2のIPアドレスを指定
user = 'ec2-user'  # 接続に使うユーザー名
key  = '~/.ssh/ANSIBLE_PRIVATE_KEY'  # 秘密鍵のパスを指定

# SSHの設定
options = Net::SSH::Config.for(host)
options[:user] = user
options[:keys] = [key]
options[:port] = 22  # デフォルトのSSHポート

# ServerspecのバックエンドをSSHに設定
set :backend, :ssh
set :host, host
set :ssh_options, options

