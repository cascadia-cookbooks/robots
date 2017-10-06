name 'cas_robots'
maintainer 'Cascadia Cookbooks'
maintainer_email 'null'
license 'GPL-3.0'
description 'Manages a sites robots.txt'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

source_url 'https://github.com/cascadia-cookbooks/robots'
issues_url 'https://github.com/cascadia-cookbooks/robots/issues'

supports 'ubuntu', '>= 16.04'
supports 'rhel', '>= 7'
supports 'centos', '>= 7'
supports 'debian', '>= 8'