require 'serverspec'
require 'net/ssh'

# SSH接続の設定
set :backend, :ssh

# EC2インスタンスの情報を設定
host = ENV['EC2_PUBLIC_IP']  # 環境変数からEC2のパブリックIPを取得

# Net::SSH::Configを使用して、SSH設定を自動的に取得
options = Net::SSH::Config.for(host)

# 必要に応じて手動でオーバーライド
options[:user] ||= 'ec2-user'   # デフォルトユーザー
options[:keys] = [ENV['SSH_KEY_PATH']]   # 環境変数からSSHキーのパスを取得
options[:keys_only] = true
options[:auth_methods] = ['publickey']
options[:verify_host_key] = :never
verbose:　debug  # デバッグ出力を有効化

set :host, host
set :ssh_options, options

