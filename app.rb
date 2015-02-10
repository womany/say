# development used only
# require "dotenv"
# Dotenv.load

require "json"
require "mini_magick"
require "jellyfish"

class Say
  include Jellyfish

  SERVER_NAME = ENV['SERVER_NAME']

  get "/bg-list" do
    folder = request.params["folder"] || ""

    if folder != ""
      files = Dir["images/#{folder}/*.jpg"]

      hash = {}
      files.each do |f|
        hash[:url]  = "#{SERVER_NAME}/#{f}"
        hash[:name] = f.split("/").last.split(".").first
      end

      hash.to_json
    else
      {
        :code => "params is empty."
      }.to_json
    end
  end

  post "/to" do
    bg = request.params["bg"] || ""
    quotes = request.params["quotes"] || ""
    next {:code => "bg and quotes can't be blank."}.to_json if (bg == "") || (quotes == "")

    quote1, quote2, quote3 = quotes.split(',')
    if quote2.nil? && quote3.nil?
      quote2 = quote1
      quote1 = nil
    end

    quote_function1 = "text 0,-68 '#{quote1}'"
    quote_function2 = "text 0,0   '#{quote2}'"
    quote_function3 = "text 0,68  '#{quote3}'"

    image = MiniMagick::Image.open("images/#{bg}.jpg")
    image.combine_options do |c|
      c.font "fonts/NotoSansCJKtc-Bold.otf"
      c.pointsize "48"
      c.gravity "Center"
      c.draw quote_function1
      c.fill "white"
      c.draw quote_function2
      c.fill "white"
      c.draw quote_function3
      c.fill "white"
    end

    timestamp = Time.now.to_i
    rand = rand(100)
    image.write("quotes/#{bg}-#{timestamp}-#{rand}.jpg")

    {
      :image => "#{SERVER_NAME}/quotes/#{bg}-#{timestamp}-#{rand}.jpg",
      :code => 'success'
    }
  end
end
