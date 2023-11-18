# increasing number of requests
exec { 'replacing':
  command => 'sed -i s/15/1000/ /etc/default/nginx',
  path    => ['/usr/bin', '/bin'],
}

exec { 'restart_nginx':
  command     => '/usr/sbin/service nginx restart',
  path        => '/usr/sbin',
  refreshonly => true,
}
