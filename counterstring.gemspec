Gem::Specification.new do |s|
  s.name          = 'counterstring'
  s.version       = '0.0.0'
  s.date          = '2016-01-01'
  s.summary       = 'Generate counterstrings.'
  s.description   = 'A simple command-line counterstring generator.'
  s.license       = 'MIT'
  s.authors       = ["Jesse Alford, Alexander Alford"]
  s.email         = 'jesse.t.alford@gmail.com'
  s.homepage      = 'http://rubygems.org/gems/counterstring'

  s.executables   = ['ctrs']
  s.files         = `git ls-files`.split($\)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']
end
                  