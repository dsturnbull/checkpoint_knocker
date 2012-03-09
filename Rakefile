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
  gem.executables = 'checkpoint_knocker'
  gem.name = "checkpoint_knocker"
  gem.homepage = "http://github.com/dsturnbull/checkpoint_knocker"
  gem.license = "MIT"
  gem.summary = %Q{open a port on a CP firewall}
  gem.description = %Q{open a port on a CP firewall}
  gem.email = "david@broodax.net"
  gem.authors = ["David Turnbull"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :build

