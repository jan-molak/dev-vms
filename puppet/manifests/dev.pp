node default {
  Exec { path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/', '/usr/local/bin/', '/usr/local/sbin/' ] }

  class { 'java':
    with_maven => true,
    with_ant   => true
  }

  # class { 'webserver':
  #   with_apache => true,
  #   with_tomcat => true
  # }

  class { 'devtools':
    ide => 'IntelliJ',
    packages => [ 'cvs', 'git', 'chromium-browser', 'firefox' ]
  }

  # copies over custom files from puppet/files
  #   to respective directories on the VM
  # class { 'custom': }
}