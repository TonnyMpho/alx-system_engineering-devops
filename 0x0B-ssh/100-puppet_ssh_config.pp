# SSH configuration file so that can connect to a server without typing a password.
file { '/Home/ubuntu/.ssh/config':
  ensure  => 'file',
  content => "\
Host ubuntu-xenial
  IdentifyFile ~/.ssh/school
  PasswordAuthentication no
"
}
