# manifest that kills a process named killmenow
exec { 'kill process':
  command     => 'pkill -9 killmenow',
  path        => ['/usr/bin'],
  onlyif      => 'pgrep killmenow',
  refreshonly => true,
}
