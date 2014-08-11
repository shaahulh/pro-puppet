class ssh::install {
	$package_name = $::osfamily ? {
                'Redhat' => 'openssh-server',
		'Debian' => 'openssh-server',
		'solaris => 'openssh',
                default  => fail("Module ssh is not suppoted in your ${::osfamily}"),
              
	},

	package {'ssh':
	  ensure => present,
	  name   => $package_name,
	}
		
