#
# Cookbook Name:: sl-chef-client
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
#
node.default['chef_client']['interval'] = 600
node.default['chef_client']['splay'] = 120 
include_recipe 'chef-client::default'
