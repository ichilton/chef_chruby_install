# chruby_install cookbook

This cookbook is an alternative to the chruby cookbook produced by my friend Stephen Nelson-Smith (@LordCope) of Atalanta Systems, which is available here: https://github.com/Atalanta/chef-chruby

I did take inspiration from the above cookbook, but this cookbook takes a slightly different approach, in that:

 - Although you can include it in a runlist to simply install chruby, it's really intended to be used from a wrapper cookbook so doesn't do anything with regards to installing rubies - I prefer to use the LWRP's provided by the ruby-build or ruby_install cookbooks for this:
   - https://github.com/rosstimson/chef-ruby_install
   - https://github.com/fnichol/chef-ruby_build

 - it currently does a once off install and doesn't worry about keeping up-to-date.

 - it doesn't use the ark cookbook so doesn't result in /usr/local/chruby-1 and a /usr/local/chruby symlink.

 - allows selecting a default ruby to be optional

 - allows adding the chef embedded ruby to be optional

 - ensures the auto selection script (auto.sh) is loaded after selecting a default ruby, so the default ruby does not override the version in .ruby-install


# Requirements

The cookbook has no dependancies, but assumes you have make etc available for the install to work.

Note that as mentioned above, this cookbook doesn't handle installing rubies so you need to use ruby_install (https://github.com/postmodern/ruby-install), ruby-build (https://github.com/sstephenson/ruby-build), the cookbooks for them as mentioned above or another method to get your required rubies into /opt/rubies or ~/.rubies.


# Usage

Override any attributes required (see: attributes/default.rb) and either include chruby_install in your run list or include_recipe 'chruby_install' in your recipe.


# Attributes


# Recipes

default - installs chruby


# Author

Author:: Ian Chilton (<ian@ichilton.co.uk>)

