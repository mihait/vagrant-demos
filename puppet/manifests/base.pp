group { 'puppet':
	ensure => present,
}

exec { 'apt-get update': 
	command => '/usr/bin/apt-get update',
}

package { 'nginx': 
	ensure => present,
	require => Exec['apt-get update'],
}

service { 'nginx':
	ensure => running,
	require => Package['nginx'],
}

file { 'vagrant-nginx':
	path => '/etc/nginx/sites-available/default',
	ensure => file,
    replace => true,
	require => Package['nginx'],
	source => 'puppet:///modules/nginx/default',
    notify => Service['nginx'],
}


