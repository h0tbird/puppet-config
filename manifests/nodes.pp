#------------------------------------------------------------------------------
# This node is inherited by all nodes:
#------------------------------------------------------------------------------

node 'base' {

    include ntp
    include ssh
    include motd
    include hosts
    include repos
    include puppet
}

#------------------------------------------------------------------------------
# Puppet masters:
#------------------------------------------------------------------------------

node /^puppet(\d+)\.popapp/ inherits base {

    include r_puppet
}
