lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rake'
require 'rake/clean'

require 'xls-split/version'

desc "Install from a locally built copy of the gem"
task :install do
  sh %{gem build xls-split.gemspec}
  sh %{gem install --no-rdoc --no-ri xls-split-#{XLSSplit::VERSION}.gem}
end

desc "Uninstall the gem"
task :uninstall => [:clean] do
  sh %{gem uninstall xls-split}
end
