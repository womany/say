require "settingslogic"

class Settings < Settingslogic
  source "application.yml"
end

require "json"
require "mini_magick"
require "jellyfish"

class Say
  include Jellyfish

  post "/to" do
    bg = request.params["bg"] || ""
    quotes = request.params["quotes"] || ""
    next {:code => "bg and quotes can't be blank."}.to_json if (bg == "") || (quotes == "")
  end
end
