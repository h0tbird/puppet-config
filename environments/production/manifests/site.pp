#------------------------------------------------------------------------------
# Stages:
#------------------------------------------------------------------------------

stage { 'pre':  before  => Stage['main'] }
stage { 'post': require => Stage['main'] }

#------------------------------------------------------------------------------
# Enable the Puppet 4 behavior today:
#------------------------------------------------------------------------------

Package { allow_virtual => true }

#------------------------------------------------------------------------------
# Catch-all nodes:
#------------------------------------------------------------------------------

node /^([a-z]+)\d{2}.demo.lan$/ { include "r_${1}" }
