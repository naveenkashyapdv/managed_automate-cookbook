name 'default'

run_list 'managed_automate::default'

default_source :supermarket

cookbook 'managed_automate', path: '..'

override['ma']['chef-automate'] = '/tmp/test/chef-automate'
override['ma']['install']['file'] = '/tmp/test/automate-20200513205422.aib'
override['ma']['license']['url'] = 'file://localhost/tmp/test/a2.lic'
