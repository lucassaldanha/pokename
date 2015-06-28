require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "pokename"
    gem.summary = "Choose a random Pokémon name to name your project"
    gem.description = "This gem choose one from the 151 Pokémons names (Yeah, just the first generation) to be used in your projects."
    gem.email = "lucascrsaldanha@gmail"
    gem.homepage = "https://github.com/lucassaldanha/pokename"
    gem.authors = ["Lucas Saldanha"]
    gem.executables = ["pokename"]
    gem.license = "MIT"
    gem.add_dependency 'slop', '4.2.0'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "pokename is not available. Install it with: gem install pokename"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "pokename #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
