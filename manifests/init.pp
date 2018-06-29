class yum_puppet_plugin {
    file { "/etc/yum/pluginconf.d/puppet.conf":
        mode    => '0644',
        owner   => root,
        group   => root,
        ensure  => file,
        content => template('yum_puppet_plugin/puppet-yum.conf');
    }
    file { "/usr/lib/yum-plugins/puppet.py":
        mode    => '0644',
        owner   => root,
        group   => root,
        ensure  => file,
        content => template('yum_puppet_plugin/puppet.py');
    }
}
