require 'serverspec'
require 'net/ssh'

# SSH接続の設定
set :backend, :ssh

# EC2インスタンスの情報を設定
options = Net::SSH::Config.for(host)

# EC2のパブリックIPまたはDNS名を指定
host = '52.196.170.136'
user = 'ec2-user' # デフォルトユーザー

options[:user] = user
options[:keys] = ['~/.ssh/t123456.pem']  # SSH秘密鍵のパス
options[:keys_only] = true
options[:auth_methods] = ['publickey']
options[:verify_host_key] = :never  # ホストキー検証を無効化

set :host, host
set :ssh_options, options


