require "bundler/gem_tasks"

# Documentation
require 'yard'
YARD::Rake::YardocTask.new { |t| t.files = ['lib/**/*.rb'] }

# RSpec
require 'rspec/core/rake_task'

desc "Run all RSpecs"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '--format Fuubar'
  t.pattern    = 'spec/unit/**/*.spec.rb', 'spec/integration/**/*.spec.rb'
end
RSpec::Core::RakeTask.new(:rspec) do |t|
  t.pattern    = 'spec/**/*.spec.rb'
end

namespace :spec do
  desc "Run unit RSpecs"
  RSpec::Core::RakeTask.new(:unit) do |t|
    t.rspec_opts = '--format Fuubar'
    t.pattern    = 'spec/unit/**/*.spec.rb'
  end

  desc "Run integration RSpecs"
  RSpec::Core::RakeTask.new(:integration) do |t|
    t.pattern = 'spec/integration/**/*.spec.rb'
  end
end
