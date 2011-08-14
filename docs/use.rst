Usage
=====

Using puppet-jenkins is simple. Once it has been installed, you can add the
following to a node definition to make use of the basic features::

    node "somenode.somedomain.com" {
        ...
        include jenkins
        ...
    }

If you want to uninstall jenkins, you can simply add the following do your node
definition::

    node "somenode.somedomain.com" {
        ...
        include jenkins::uninstall
    }

That's it! Easy, right?
