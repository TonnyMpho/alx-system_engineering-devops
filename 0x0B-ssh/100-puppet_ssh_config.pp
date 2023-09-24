# SSH configuration file so that can connect to a server without typing a password.
file { 'config':
  ensure  => 'file',
  path    => '/etc/ssh/ssh_config''
  content => "\
Host *
  IdentifyFile ~/.ssh/school
  PasswordAuthentication no
"
}
