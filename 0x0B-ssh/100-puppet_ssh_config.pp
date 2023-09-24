# SSH configuration file so that can connect to a server without typing a password.
file { '/etc/ssh/ssh_config':
  ensure  => 'file',
  content => "\
  IdentifyFile ~/.ssh/school
  PasswordAuthentication no
"
}
