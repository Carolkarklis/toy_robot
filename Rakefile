require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "yard"
require "yard-tomdoc"

RSpec::Core::RakeTask.new(:spec)
YARD::Rake::YardocTask.new

task :default => :spec