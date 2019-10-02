name             'nginx-test-cookbook'
maintainer       'CosmonauT'
maintainer_email 'cosmonaut.ok@gmail.com'
license          'MIT'
description      'Installs/configures nginx'
version          '0.1.0'
source_url 'https://github.com/cosmonaut-ok/nginx-test-cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/ThomasCookOnline/nginx-test-cookbook/issues' if respond_to?(:issues_url)

chef_version '>= 14' if respond_to?(:chef_version)

depends 'nginx', '~> 10.0'

supports 'debian'
supports 'ubuntu'
