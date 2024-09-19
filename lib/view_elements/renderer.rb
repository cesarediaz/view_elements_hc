module ViewElements
  class Renderer
    attr_reader :action_view, :template, :locals

    def initialize(action_view, template, locals)
      @action_view = action_view
      @template = template
      @locals = locals
    end

    # previous code
    # def render
    #   action_view.render file: template, locals: locals, formats: [:html]
    # end

    def render
      puts 'Template: ' + template

      action_view.render file: Rails.root.join('app/view_elements/shared/service_fee/index.html.erb'), locals: locals, formats: [:html]
    end
  end
end
