require 'bundler/setup'
require 'rake/testtask'
require 'rake/clean'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/*_test.rb']
end

desc 'Run tests'
task default: :test

CLEAN.include('tmp/**/*')
