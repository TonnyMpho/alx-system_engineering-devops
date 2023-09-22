# SSH configuration file so that can connect to a server without typing a password.
file { '/home/ubuntu/.ssh/config':
  ensure  => 'file'
  content => "\
Host 98.98.98.98
  IdentifyFile ~/.ssh/school
  PasswordAuthentication no
",
}
