#
# Cookbook Name:: sl-users
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
data_bag("users").each do |user|
  user_data = data_bag_item("users", user)
  user_name = user_data["id"]

  user "#{user_name}" do
	comment "user #{user_name}"
	password user_data["password"]
	shell user_data["shell"]
  end
  
  user_data["groups"].each do |ugroup|
	group ugroup do
		action :modify
		members "#{user_name}"
		append true
	end
  end

end
