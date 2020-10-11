module Domains
  module Display
    def display
      template = self.class.class_variable_get("@@template")
      ApplicationController.render(
        assigns: { item: self },
        template: template,
        layout: false,
      )
    end
  end
end
