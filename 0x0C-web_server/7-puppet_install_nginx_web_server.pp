# install and configure an Nginx server using Puppet
package { 'nginx':
  ensure => 'installed',
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
}

nginx::resource::location { 'redirect':
  location => '/redirect_me',
  server   => 'default',
  rewrite  => '^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent',
}
# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Package['nginx'],
}
