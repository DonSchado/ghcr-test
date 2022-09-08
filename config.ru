require 'rack'
require 'erb'

view = <<~HTML
  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Rack</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300italic,700,700italic">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.4.1/milligram.css">
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="column">
          <h2>Ohai</h2>
          <h4>This is a Rack App on Docker</h4>

          <blockquote>
            <p><em><%= Time.now %></em></p>
          </blockquote>
        </div>
      </div>
    </div>
  </body>
  </html>
HTML

use Rack::CommonLogger

run ->(env) do
  Rack::Response.new(ERB.new(view).result).finish
end

