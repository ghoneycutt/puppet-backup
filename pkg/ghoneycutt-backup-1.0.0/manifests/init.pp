# Class: backup
#
# This module manages backup tools and directory structure
#
# Requires:
#   class generic
#
class backup {

    include generic

    package {[
        "bzip2",
        "gzip",
        "tar",
    ]:} # package

    file { "/data/backups":
        ensure  => directory,
        mode    => 755,
        require => File["/data"],
    } # file
} # class backup
