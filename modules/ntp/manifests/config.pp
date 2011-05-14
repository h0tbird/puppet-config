#------------------------------------------------------------------------------
# ntp::config
#------------------------------------------------------------------------------

class ntp::config ( $ensure ) {

    # Require the delegated class:
    Class['ntp'] -> Class['ntp::config']

    # Check for valid values:
    if ! ( $ensure in [ 'present', 'absent' ] ) {
        fail ( "${module_name}::config 'ensure' must be one of: 'present' or 'absent'" )
    }

    # Install or remove the configuration files:
    file {

        $ntp::params::service_config:
            ensure  => $ensure,
            content => template("${ntp::params::templates}/ntp.conf.erb"),
            owner   => 'root',
            group   => 'root',
            mode    => '0644';

        $ntp::params::step_tickers:
            ensure  => $ensure,
            content => template("${ntp::params::templates}/step-tickers.erb"),
            owner   => 'root',
            group   => 'root',
            mode    => '0644';

        $ntp::params::keys:
            ensure  => $ensure,
            content => template("${ntp::params::templates}/keys.erb"),
            owner   => 'root',
            group   => 'root',
            mode    => '0600';
    }
}
