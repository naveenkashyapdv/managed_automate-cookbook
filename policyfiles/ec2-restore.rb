name 'upgrade'

default_source :supermarket

cookbook 'managed_automate', path: '..'

run_list 'managed_automate::_chef_automate', 'managed_automate::restore'

override['ma']['chef-automate'] = '/tmp/chef-automate'
override['ma']['install']['url'] = 'https://mattray.s3-ap-southeast-2.amazonaws.com/automate-20190813170406.aib'
override['ma']['upgrade']['url'] = 'https://mattray.s3-ap-southeast-2.amazonaws.com/automate-20190820163418.aib'
override['ma']['restore']['url'] = 'https://mattray.s3-ap-southeast-2.amazonaws.com/automate-backup-20190902064704.tgz'
