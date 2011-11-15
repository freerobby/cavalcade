# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "cavalcade"
  gem.homepage = "http://github.com/freerobby/cavalcade"
  gem.license = "MIT"
  gem.summary = %Q{a lightweight infrastructure for using Resque as a stand-alone job queue}
  gem.description = %Q{Resque can be very useful outside of a web app, too. What if you want to write jobs in Ruby and just enqueue them from your console? Or from a Java application? Or in cron jobs? Cavalcade to the resque! Cavalcade creates a resque-based, stand-alone job queue, and provides rake tasks to enqueue all of your jobs.}
  gem.email = "robby@freerobby.com"
  gem.authors = ["Robby Grossman"]
  gem.executables = ["cavalcade"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "cavalcade #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
