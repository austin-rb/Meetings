#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2012, Subgenius, Inc.
#
# All rights reserved - Do Not Redistribute
#

package "redis-server" do
  action :install
end

template "/etc/redis/redis.conf" do
  source "redis.conf.erb"
  mode "0644"
  action :create
end

service "redis-server" do
  action :enable
end
