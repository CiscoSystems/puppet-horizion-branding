puppet-horizion-branding
========================

A quick puppet module to reset the branding of the ubuntu packaged OpenStack Horizon UI.

Add your logo in the $PUPPET\_MODULE\_PATH/files/ as "logo.png". The dimensions should be 108 pixels wide by 121 pixels high.

Add

  # Changes the branding of the "ubuntu" installed Horizon Package
  class { branding: }

To your horizon "node" definition in your puppet site.pp file.


