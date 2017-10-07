#
# Cookbook:: robots
# Recipe:: default
# Description:: Manages robots.txt
#

node['cas_robots'].each do |name, attributes|
    if attributes['path'].end_with? 'robots.txt'
        path = attributes['path']
    elsif attributes['path'].end_with? '/'
        path = "#{attributes['path']}robots.txt"
    else
        path = "#{attributes['path']}/robots.txt"
    end

    template "Managing #{name} robots.txt" do
        source 'robots.txt.erb'
        path   path
        owner  attributes['owner'] || 'root'
        group  attributes['group'] || attributes['owner'] || 'root'
        mode   attributes['mode'] || 0644
        backup false
        action :create
        variables (
            attributes
        )
    end
end
