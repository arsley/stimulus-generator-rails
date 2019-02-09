Gem::Specification.new do |s|
  s.name     = 'stimulus-generator-rails'
  s.version  = '1.0.0'
  s.date     = '2019-02-08'
  s.summary  = 'StimulusJS generator on Rails with Webpacker'
  s.authors  = ['Aoshi Fujioka']
  s.email    = 'blue20will@gmail.com'
  s.homepage = 'https://github.com/arsley/stimulus-generator-rails'
  s.license  = 'MIT'

  s.add_dependency 'activesupport'
  s.add_dependency 'webpacker'

  s.files    = Dir['lib/**/*']
end
