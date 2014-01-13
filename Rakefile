require 'rake'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'
require 'rake/clean'

NAME = "xls-split"
VER = "0.1"

PKG_FILES = %w( README.md Rakefile ) + 
  Dir.glob("{bin, lib}/**/*")

CLEAN.include ['*.gem', 'pkg']  
SPEC =
  Gem::Specification.new do |s|
    s.name = NAME
    s.version = VER
    s.platform = Gem::Platform::RUBY
    s.required_ruby_version = ">= 1.8.5"    
    s.summary = "Split spreadsheets into CSV files"
    s.description = "Command-line tool to extract worksheets from spreadsheets and create CSV files"
    s.author = "Leigh Dodds"
    s.email = 'leigh@ldodds.com'
    s.homepage = 'http://github.com/ldodds/xls-split'
    s.files = PKG_FILES 
    s.bindir = "bin"
    s.require_path = "lib"     
    s.executables = ["xls-split"]
    s.add_dependency("spreadsheet", ">= 0.6.4.1")
  end
      
Rake::GemPackageTask.new(SPEC) do |pkg|
    pkg.need_tar = true
end

desc "Install from a locally built copy of the gem"
task :install do
  sh %{rake package}
  sh %{sudo gem install --no-rdoc --no-ri pkg/#{NAME}-#{VER}}
end

desc "Uninstall the gem"
task :uninstall => [:clean] do
  sh %{sudo gem uninstall #{NAME}}
end
