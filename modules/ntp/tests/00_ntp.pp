#------------------------------------------------------------------------------
# puppet apply 00_ntp.pp --graph
#------------------------------------------------------------------------------

class { 'ntp':
    ensure  => 'running',
    version => 'present',
}