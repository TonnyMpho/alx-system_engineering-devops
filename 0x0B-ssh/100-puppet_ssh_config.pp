# SSH configuration file so that can connect to a server without typing a password.
file { '/etc/ssh/ssh_config':
  ensure  => 'present',
  content => "\
  IdentifyFile ~/.ssh/school
  PasswordAuthentication no
"
}
