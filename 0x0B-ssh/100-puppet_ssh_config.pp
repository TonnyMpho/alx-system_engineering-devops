# SSH configuration file so that can connect to a server without typing a password.
file_line { 'disable Password Auth':
  ensure => present,
  line   => 'PasswordAuthentication no',
  path   => '/etc/ssh/ssh_config',
}

file_line { 'Identity file':
  ensure => present,
  line   => 'IdentifyFile ~/.ssh/school',
  path   => '/etc/ssh/ssh_config',
}
