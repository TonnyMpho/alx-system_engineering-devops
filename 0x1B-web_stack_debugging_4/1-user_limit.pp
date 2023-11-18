# change os configuration for holberton user

exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -i s/holberton/holb/ /etc/security/limits.conf',
  path    => ['/usr/bin', '/bin'],
}
