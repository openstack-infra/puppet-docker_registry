# == Class: docker_registry
#
# Manage a docker registry
#
# === Parameters:
#
# [*package_name*]
#   Name of package to be installed
#   Default: docker-distribution-registry
#
# [*package_ensure*]
#   Passed to the docker package.
#   Default: present
#
# [*config_file*]
#   Path to config file
#   Default: /etc/docker-distribution/registry/config.yml
#
# [*service_name*]
#   Name of service to start
#   Default: registry
#
# [*service_ensure*]
#   Start the service
#   Default: running
#
# [*service_enable*]
#   Enable the service
#   Default: true

class docker_registry (
  $package_name   = docker-distribution-registry
  $package_ensure = present
  $service_name   = registry
  $service_name   = registry
  $service_ensure = running
  $service_enable = true

) {

  class {'docker_registry::install':
    package_name  => $package_name,
    package_ensure  => $package_ensure,
  }

  class {'docker_registry::config'}
  class {'docker_registry::service'}

}
