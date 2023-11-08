# Puppet
file_line { 'Replace':
  path  => 'var/www/html/wq-settings.php',
  line  => 'class-wq-locale.php',
  match => 'class-wq-locale.phpp',
}

exec { 'restart aparche':
  command     => '/etc/init.d/apache2 restart',
  refreshonly => true,
  path        => '/usr/bin:/bin',
}
