## install nginx from linux distribution repository
default['nginx']['repo_source'] = 'repo'

default['nginx-test-cookbook']['template_file'] = 'nginx.conf.erb'
default['nginx-test-cookbook']['site_variables']['example'] = {
  'server_name' => 'default',
  'port' => '8081',
  'nginx_log_dir' => '/var/log/nginx',
  'default_root' => '/var/www/'
}
