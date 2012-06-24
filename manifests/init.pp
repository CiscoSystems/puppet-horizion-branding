class branding {
  package {'openstack-dashboard-ubuntu-theme':
	ensure => absent,
  }

  file {'/usr/share/openstack-dashboard/openstack_dashboard/static/dashboard/img/logo.png':
	ensure => present,
	source => "puppet:///modules/branding/logo.png",
	}

  file {'/usr/share/openstack-dashboard/openstack_dashboard/templates/_header.html':
	ensure => present,
	content => template("branding/_header.html")
	}
	
	exec { "/bin/echo SITE_BRANDING=True >> /etc/openstack-dashboard/local_settings.py":
	unless => "/bin/grep SITE_BRANDING /etc/openstack-dashboard/local_settings.py 2>/dev/null"
	  }
}
