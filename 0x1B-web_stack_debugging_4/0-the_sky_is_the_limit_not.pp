# increasing number of requests
exec { 'fix--for-nginx':
  command => 'sed -i s/15/1000/ /etc/default/nginx',
  path    => ['/usr/bin', '/bin'],
}

exec { 'restart_nginx':
  command     => 'service nginx restart',
  path        => '/usr/sbin',
  refreshonly => true,
}
