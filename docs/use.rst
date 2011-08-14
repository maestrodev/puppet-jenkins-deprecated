Usage
=====

Install
-------

Using puppet-jenkins is simple. Once it has been installed, you can add the
following to a node definition to make use of the basic features::

    node "somenode.somedomain.com" {
        ...
        include jenkins
        ...
    }

Once your nodes have applied your new manifest, they'll have jenkins installed
and running. You can then visit your new jenkins server by visiting
http://somenode.somedomain.com:8080/.

.. note::
    By default, jenkins runs on port 8080. If you'd like your jenkins instance
    to be available on the standard HTTP port, take a look at the `jenkins
    proxying guide
    <https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu>`_.

Uninstall
---------

If you want to uninstall jenkins, you can simply add the following do your node
definition::

    node "somenode.somedomain.com" {
        ...
        include jenkins::uninstall
        ...
    }
