#
# Cookbook:: chef_ansible_configuration
# Recipe:: ansible_install
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_repository 'ansible' do
	uri	'http://ppa.launchpad.net/ansible/ansible/ubuntu'
	distribution 'trusty'
	components ['main']
	keyserver 'keyserver.ubuntu.com'
	key '93C4A3FD7BB9C367'
	action :add
	deb_src true
end

apt_update 'Updates Apt' do
  action :update
end

installs = ['python2.7', 'ansible']

installs.each do |install|
	package install do
	  action :install
	end
end