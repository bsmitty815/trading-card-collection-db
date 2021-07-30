require_relative "./config/environment.rb"

# enables cross-origin resource sharing
# this allows any site (note origins '*') to make any request to our API

use Rack::Cors do
  allow do
    origins '*' # can also put like origins - 'http://localhost:3001' - and only allow that domain to send a request
    resource '/*', headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end

# We'll create the Application class

run Application.new
