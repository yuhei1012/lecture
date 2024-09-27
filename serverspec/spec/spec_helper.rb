require 'serverspec'
require 'net/ssh'

# SSH接続の設定
set :backend, :ssh

# EC2インスタンスの情報を設定
host = ENV['EC2_PUBLIC_IP']  # 環境変数からEC2のパブリックIPを取得
user = 'ec2-user'            # デフォルトユーザー

options = {
  user: user,
  keys: ['~/.ssh/id_rsa'],   # CircleCIが自動で設定するSSHキーのパス
  keys_only: true,
  auth_methods: ['publickey'],
  #verify_host_key: :never    # ホストキーの検証を無効化
}

set :host, host
set :ssh_options, options


