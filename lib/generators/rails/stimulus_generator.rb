require 'rails/generators/named_base'
require 'active_support/inflector'

class Rails::Generators::StimulusGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  argument :actions, type: :array, default: [], banner: 'action action'

  def create_controller_dir
    empty_directory(controller_path) unless File.directory?(controller_path)
  end

  def copy_controller_file
    actions.each do |action|
      @action = action
      template('controller.js', controller_path + "#{action}_controller.js")
    end
  end

  def copy_stylesheet_file
    template('controller.scss', stylesheet_path + "#{file_name.pluralize}.scss")
  end

  private

  def source_path
    ::Webpacker.instance.config.source_path
  end

  def controller_path
    source_path + "javascripts/controllers/#{file_name.pluralize}"
  end

  def stylesheet_path
    source_path + 'stylesheets'
  end
end

