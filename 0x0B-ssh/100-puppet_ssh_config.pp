# SSH configuration file so that can connect to a server without typing a password.
file { '~/.ssh/config':
  ensure  => 'file',
  content => "\
Host *
  IdentifyFile ~/.ssh/school
  PasswordAuthentication no
"
}
