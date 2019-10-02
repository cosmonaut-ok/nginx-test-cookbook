nginx_install node['nginx']['repo_source']

name = 'example'

nginx_site name do
  cookbook 'nginx-test-cookbook'
  template "#{name}_site.conf.erb"
  variables node['nginx-test-cookbook']['site_variables'][name]
end

## comunity cookbook does not recognize the service for unknown reason
service 'nginx' do
  supports status: true, restart: true, reload: true
  action   [:start, :enable]
end

directory node['nginx-test-cookbook']['site_variables'][name]['default_root'] do
  recursive true
end

cookbook_file "#{node['nginx-test-cookbook']['site_variables'][name]['default_root']}/index.html" do
  source 'index.html'
end
