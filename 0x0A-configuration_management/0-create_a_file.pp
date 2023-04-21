#resource declaration start with puppet
file { '/tmp/codingschoo':
	path => '/tmp/school',
	mode => '0744',
	owner => 'www-data',
	group => 'www-data',
	content => 'I love Puppet'
}
