# Methods added to this helper will be available to all templates in the application.
require 'yaml'

module ApplicationHelper
  def version
    yml = YAML::load(File.open("#{Rails.root}/version.yml"))
    @version_string = "v#{yml["major"]}.#{yml["minor"]}.#{yml["patch"]}"
  end
end
