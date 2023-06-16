# This script allows a user to login and open files without any errors
exec { 'soft':
  command => "sed -i -e 's/5/1000/g' /etc/security/limits.conf",
  path    => '/bin'
}
