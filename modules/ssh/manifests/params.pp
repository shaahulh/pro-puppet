class ssh::params {
  case $::osfamily {
    Solaris: {
      $ssh package name = 'openssh'
    }
    Debian: {
      $ssh package name = 'openssh-server'
    }
  RedHat: {
    $ssh package name = 'openssh-server'
    }
  default: {
    fail("Module propuppet-ssh does not support osfamily: ${::osfamily}")
    }
  }
}
