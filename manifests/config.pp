# == Class: docker_registry::config
#
# This class is used to manage arbitrary docker_registry configurations.
#
# === Parameters
#
# [*docker_registry_config*]
#   (optional) Allow configuration of arbitrary docker_registry configurations.
#   The value is an hash of docker_registry_config resources. Example:
#   { 'DEFAULT/foo' => { value => 'fooValue'},
#     'DEFAULT/bar' => { value => 'barValue'}
#   }
#   In yaml format, Example:
#   docker_registry_config:
#     DEFAULT/foo:
#       value: fooValue
#     DEFAULT/bar:
#       value: barValue
#
#   NOTE: The configuration MUST NOT be already handled by this module
#   or Puppet catalog compilation will fail with duplicate resources.
#
class docker_registry::config (
  $docker_registry_config = {},
) {

  validate_hash($docker_registry_config)

  create_resources('docker_registry_config', $docker_registry_config)
}
