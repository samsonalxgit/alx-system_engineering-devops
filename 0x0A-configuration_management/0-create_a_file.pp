#resource declaration start with puppet
file { '/tmp/codingschoo':
ensure => file,
path => '/tmp/icodingschool',
mode => '0744',
owner => 'www-data',
group => 'www-data',
content => 'I love puppet'
}
