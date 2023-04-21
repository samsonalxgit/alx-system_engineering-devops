file { '/tmp/codingschool':
  ensure  => file,
  path => '/temp/school',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
