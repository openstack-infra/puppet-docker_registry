# == Class: docker_registry::install
#
# Manage a docker registry
#
# === Parameters:
#
# [*package_name*]
#   Name of package to be installed
#   Defaults to docker-distribution-registryclass
#
# [*package_ensure*]
#   Passed to the docker package.
#   Defaults to present


class docker_registry::install (
  $package_name = $::docker_registry::package_name,
  $package_ensure = $::docker_registry::package_ensure,
) {
  package { $package_name:
    ensure => $::docker_registry::package_ensure,
  }
}