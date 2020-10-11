module FormHelper
  class FormBuilder < BlockHelpers::Base
    def initialize(model)
      @model = model
    end

    def display(body)
      form_tag({ :controller => "actions", :action => "run" }, :id => "filter_form", :remote => true) do
        %(
          <input type="hidden" name="exec" value="#{@model.action}" />
          #{body}
          <button type="submit"> #{@model.label} </button>
          ).html_safe
      end
    end

    def input_field(field, options = {})
      "<label>#{options[:label]}<br /><input type='text' name='#{field}' value='#{@model.send(field)}' /></label><br/>".html_safe
    end

    def password_field(field, options = {})
      "<label>#{options[:label]}<br /><input type='password' name='#{field}' value='#{@model.send(field)}' /></label><br/>".html_safe
    end
  end
end
