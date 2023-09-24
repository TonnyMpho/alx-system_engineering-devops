# SSH configuration file so that can connect to a server without typing a password.
file { '/etc/ssh/ss_config':
  ensure  => 'file',
  content => "\
Host *
  IdentifyFile ~/.ssh/school
  PasswordAuthentication no
",
}
