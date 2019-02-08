require 'bundler/setup'
require 'active_support/testing/autorun'
require 'rails/generators/test_case'
require 'generators/rails/stimulus_generator'

class StimulusGeneratorTest < Rails::Generators::TestCase
  tests Rails::Generators::StimulusGenerator
  destination File.expand_path('../tmp', __dir__)
  setup :prepare_destination

  test 'hello world' do
    assert_equal 'hello world', 'hello world'
  end
end
