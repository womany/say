require "rack/cors"
require "settingslogic"
class Settings < Settingslogic
  source File.join(File.dirname(__FILE__), "config/application.yml")
  namespace ENV['RACK_ENV']
  load!
end

require File.join(File.dirname(__FILE__), "app")

use Rack::Static,
  :urls => ["/images", "/quotes"],
  :root => "public"

use Rack::CommonLogger
use Rack::ContentLength
use Rack::ContentType, "application/json; charset=utf-8"
use Rack::Cors do
  allow do
    origins 'womany.test', 'womany.net'
    resource '*', :headers => :any, :methods => [:get]
  end
end
run Say.new
