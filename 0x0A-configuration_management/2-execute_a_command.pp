# manifest that kills a process named killmenow
exec { 'killing a process killmenow on all puppet-agents':
  command  => 'pkill -9killmenow',
  path     => '/bin:/usr/bin',
  onlyif   => 'pgrep killmenow',
  provider => shell,
