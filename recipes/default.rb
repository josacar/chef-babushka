#
# Cookbook Name:: babushka
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'git::default'

git node['babushka']['git']['clone_path'] do
  repository node['babushka']['git']['repo_path']
  action node['babushka']['git']['update_strategy']
end

babushka_bin = File.join(node['babushka']['git']['clone_path'], 'bin', 'babushka.rb')

link '/usr/local/bin/babushka' do
  to babushka_bin
end
