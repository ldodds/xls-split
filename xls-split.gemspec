lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "xls-split/version"

Gem::Specification.new do |s|
  s.name        = "xls-split"
  s.version     = XLSSplit::VERSION
  s.authors     = ["Leigh Dodds"]
  s.email       = ["leigh@ldodds.com"]
  s.homepage    = "http://github.com/ldodds/xls-split"
  s.summary     = "Extract worksheets from XLS files into CSV files"
  s.description = "Tools for splitting Excel files into CSV files"
  s.files = Dir["{bin,lib}/**/*"] + ["LICENSE.md", "README.md"]
  s.executables << 'xls-split'
  
  s.bindir = "bin"
  s.require_path = "lib"     
  s.add_dependency("spreadsheet", ">= 0.6.4.1")
end