require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :smoke do
  expected_output = "****************************************************************************************************************************************************************************************************************************************************************\n"

  `rake install`
  output = `ctrs`
  raise 'SMOKE! SMOKE!' unless output == expected_output
  puts 'Pass'
end
