require 'bundler/setup'
require 'active_support/testing/autorun'
require 'rails/generators/test_case'
require 'generators/rails/stimulus_generator'
require 'mock_webpacker'

class StimulusGeneratorTest < Rails::Generators::TestCase
  tests Rails::Generators::StimulusGenerator
  arguments %w(book index edit show)
  destination File.expand_path('../tmp', __dir__)
  setup :prepare_destination

  test 'It generates CONTROLLERNAME_PLURALIZED/ACTION_controller.js and CONTROLLERNAME_PLURALIZED.scss' do
    run_generator

    %w(index edit show).each do |action|
      assert_file "app/webpacker/javascripts/controller/books/#{action}_controller.js"
    end

    assert_file "app/webpacker/stylesheets/books.scss"
  end
end
