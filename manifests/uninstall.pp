#
# Class: jenkins::uninstall
#
# Uninstalls jenkins.
#
# Usage:
#
#   include jenkins::uninstall
#
class jenkins::uninstall inherits jenkins {

    Package["jenkins"] { ensure => absent }

    Service["jenkins"] {
        enable  => false,
        ensure  => stopped,
    }

}
