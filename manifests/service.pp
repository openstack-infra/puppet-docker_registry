# == Class: docker_registry::service
#
# Manage a docker registry
#
# === Parameters:
#
# [*package_name*]
#   Name of package to be installed
#   Defaults to docker-distribution-registry
#
# [*package_ensure*]
#   Passed to the docker package.
#   Defaults to present
#
# [*config_file*]
#   Path to config file
#   Defaults to /etc/docker-distribution/registry/config.yml
#
# [*service_name*]
#   Name of service to start
#   Defaults to registry
#


class docker-registry::service (
  $service_name = $::docker_registry::service_name,
  $service_ensure = $::docker_registry::service_ensure,
  $service_enable = $::docker_registry::service_enable,

) {
  service { $service_name:
    ensure => $service_ensure,
    enable => $service_enable,
  }
}