# nginx-test-cookbook
nginx-test-cookbook

Reproduce:

- install virtualbox
- install chefDK 2.0+ (https://downloads.chef.io/chefdk/)

- execute `/opt/chefdk/bin/chef exec kitchen converge`

- `curl http://localhost:8081

- to run tests execute `/opt/chefdk/bin/chef exec kitchen converge && /opt/chefdk/bin/chef exec kitchen verify` or `/opt/chefdk/bin/chef exec kitchen test`
