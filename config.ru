require "rack/cors"
require File.join(File.dirname(__FILE__), "app")

use Rack::Static,
  :urls => ["/images", "/quotes"],
  :root => "public"

use Rack::CommonLogger
use Rack::ContentLength
use Rack::ContentType, "application/json; charset=utf-8"
use Rack::Cors do
  allow do
    origins 'womany.dev', 'womany.net'
    resource '*', :headers => :any, :methods => [:get]
  end
end
run Say.new
