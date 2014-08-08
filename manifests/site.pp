node 'sha-node1.pro-puppet.com' {
	package { 'vim':
		ensure => present,
	}
	package { 'finger':
		ensure => absent,
	}
}	
