include_recipe 'datadog::dd-agent'

# Build a data structure with configuration.
# @see http://docs.datadoghq.com/guides/network_checks/
# @example
#   node.override['datadog']['directory']['instances'] = [
#     {
#       'name' => 'MyDirectorycheck',
#       'directory' => '/path/to/my/dir',
#       'pattern' => '*.log',
#       'recursive' => true,
#       'tags' => [
#        'myApp',
#        'serviceName'
#       ]
#     }
# ]

datadog_monitor 'directory' do
  instances node['datadog']['directory']['instances']
end
