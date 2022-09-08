require 'rack'

use Rack::CommonLogger

run ->(env) do
  Rack::Response.new("<h1>ohai rack!</h1><small>#{Time.now}</small>").finish
end
