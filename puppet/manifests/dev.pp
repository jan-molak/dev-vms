node default {
  Exec { path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/', '/usr/local/bin/', '/usr/local/sbin/' ] }

  class { 'java':
    with_maven => true,
    with_ant   => true
  }
}