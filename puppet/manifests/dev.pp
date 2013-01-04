node default {
  Exec { path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/', '/usr/local/bin/', '/usr/local/sbin/' ] }

  class { 'java':
    with_maven => true,
    with_ant   => true
  }

  class { 'tomcat': version => 6 }

  class { 'devtools':
    ide      => [ 'IntelliJ 12.0.1', 'Eclipse juno-SR1' ],
    packages => [ 'cvs', 'git', 'chromium-browser', 'firefox' ]
  }

  # copies over custom configuration files from
  #  files/custom_configuration to respective directories on the VM
  # class { 'file_transporter': }
}
