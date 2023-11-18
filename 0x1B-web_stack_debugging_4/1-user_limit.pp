# change os configuration for holberton user

exec { 'change-os-configuration-for-holberton-user':
  command => 'echo "holberton soft nofile 4096\nholberton har nofile 8192" >> /etc/security/limits.conf',
  path    => ['/usr/bin', '/bin'],
}
