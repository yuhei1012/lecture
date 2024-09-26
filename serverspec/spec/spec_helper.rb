require 'serverspec'
set :backend, :ssh

# SSHの接続情報を設定します
host = ENV['TARGET_HOST']
options = Net::SSH::Config.for(host)
options[:user] = 'ec2-user'  # SSH接続するユーザー名

set :host,        options[:host_name] || host
set :ssh_options, options
