# Encoding: utf-8
name             'chef-example'
maintainer       'Paul Czarkowski'
maintainer_email 'paul.czarkowski@rackspace.com'
license          'Apache 2.0'
description      'Installs/Configures chef-example'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w(ubuntu).each do |os|
  supports os
end

%w(
  nginx apt
).each do |dep|
  depends dep
end
