node 'basenode' {

    file {'/tmp/node':
        ensure  => present,
        mode    => '640',
        content => "test 05",
    }
}

node 'node1' inherits basenode {

    include ntp

    file {'/tmp/node1':
        ensure  => present,
        mode    => '640',
        content => "node1",
    }
}

node 'node2' inherits basenode {

    file {'/tmp/node2':
        ensure  => present,
        mode    => '640',
        content => "node2",
    }
}
