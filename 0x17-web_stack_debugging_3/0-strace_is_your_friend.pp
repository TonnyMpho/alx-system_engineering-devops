# Puppet
exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/ /var/www/html/wp-settings.php',
  path    => '/usr/bin:/bin',
}

exec { 'restart_aparche':
  command     => '/etc/init.d/apache2 restart',
  refreshonly => true,
  path        => '/usr/bin:/bin',
}
