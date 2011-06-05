# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'
require 'radiant-html_tags-extension/version'
class HtmlTagsExtension < Radiant::Extension
  version RadiantHtmlTagsExtension::VERSION
  description "Adds html_tags to Radiant."
  url "http://github.com/jomz/radiant-html_tags-extension"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    Page.send :include, Tags
    # tab 'Content' do
    #   add_item "Html Tags", "/admin/html_tags", :after => "Pages"
    # end
  end
end
