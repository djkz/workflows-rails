module ActionDispatch::Routing
  class Mapper
    def authenticated(scope = nil, block = nil)
      constraint = lambda do |req|
        Services::Constraints::Auth.new(req).matches?
      end

      constraints(constraint) do
        yield
      end
    end

    def workflow(name, block = nil)
      resources name, controller: "application", action: "show", defaults: { name: name }
    end
  end
end
