#
# Cookbook Name:: chruby_install
# Attributes:: default
#

default[:chruby_install][:git_url] = 'https://github.com/postmodern/chruby.git'
default[:chruby_install][:git_ref] = 'master'

default[:chruby_install][:auto_upgrade] = false

case platform
  when "redhat", "centos", "fedora", "amazon", "scientific"
    default[:chruby_install][:git_packages] = %w{ git }

  when "debian", "ubuntu", "suse", "mac_os_x"
    default[:chruby_install][:git_packages] = %w{ git-core }
end
