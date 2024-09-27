require 'serverspec'
require 'net/ssh'

# SSH接続の設定
set :backend, :ssh

# EC2インスタンスの情報を設定
options = {
  user: ec2-user,
  keys: [ENV[SSH_KEY_PATH]],   # 環境変数からSSHキーのパスを取得
  keys_only: true,
  auth_methods: ['publickey'],
  verify_host_key: :never    # ホストキーの検証は無効化
}

set :host, host
set :ssh_options, options

