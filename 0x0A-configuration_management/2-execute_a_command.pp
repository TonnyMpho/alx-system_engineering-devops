# manifest that kills a process named killmenow
exec { 'kill_process':
  command     => 'pkill -9 killmenow',
  path        => ['/usr/bin'],
  onlyif      => 'pgrep killmenow',
  refreshonly => true
}
