require 'stove/rake_task'
require 'cookstyle'
require 'rubocop/rake_task'

Stove::RakeTask.new do |config|
  config.stove_opts = ['--extended-metadata']
end

RuboCop::RakeTask.new do |task|
  task.options << '--display-cop-names'
end
