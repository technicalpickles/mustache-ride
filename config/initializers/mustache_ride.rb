class Mustache::Rails < Mustache
  include ActionController::UrlWriter
  include ActionView::Helpers

  attr_accessor :request, :response, :params, :controller
end

class Mustache::Rails::TemplateHandler < ActionView::TemplateHandler
  def render(template, local_assigns)
    mustache_class_name = template.path.gsub(".html.mustache", "").classify
    mustache_class = mustache_class_name.constantize

    result = mustache_class.new
    result.template_file = "#{RAILS_ROOT}/app/views/#{template.path}"
    result.request = @view.controller.request
    result.response = @view.controller.response
    result.params = @view.controller.params
    result.controller = @view.controller
    result.to_html
  end

end

ActionView::Template.register_template_handler(:mustache, Mustache::Rails::TemplateHandler)

$LOAD_PATH << "#{RAILS_ROOT}/app/mustaches"
Rails.configuration.load_paths += %W{
    #{RAILS_ROOT}/app/mustaches
  }
