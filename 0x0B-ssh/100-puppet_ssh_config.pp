# SSH configuration file so that can connect to a server without typing a password.
file_line { 'disable Password Auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => [
    'passwordAuthentication no',
    'IdentifyFile ~/.ssh/school',
  ],
}
