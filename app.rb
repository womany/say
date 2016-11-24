require "json"
require "mini_magick"
require "jellyfish"

class Say
  include Jellyfish

  SERVER_NAME = Settings.dns_name

  get "/bg-list" do
    folder = request.params["folder"] || ""

    if folder != ""
      files = Dir["public/images/#{folder}/*.jpg"]

      array = []
      files.each do |f|
        path = f.sub("public/", "")
        name = f.split("/").last(2).join("/").split(".").first
        array << {
                   :url => "#{SERVER_NAME}/#{path}",
                   :name => name
                 }
      end

      array.to_json
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

    folder, filename = bg.split("/")

    quote1, quote2, quote3 = quotes.split("\n")
    [quote1, quote2, quote3].each do |q|
      next if q.nil?
      q.strip!
      q.gsub!("'", "\\\\'")
    end
    if quote2.nil? && quote3.nil?
      quote2 = quote1
      quote1 = nil
    end

    image = MiniMagick::Image.open("public/images/#{folder}/#{filename}.jpg")

    case folder
    when "vday2015", "201511sofina",
         "2016changedestiny", "2016YoungFuture", "2016lemuria",
         "201607skl", "201607BenQ", "201610samsung", 'goldenhourse2016'
      position = 60
      quote_function1 = "text 0,-#{position} '#{quote1}'"
      quote_function2 = "text 0,0 '#{quote2}'"
      quote_function3 = "text 0,#{position} '#{quote3}'"

      image.combine_options do |c|
        c.font "fonts/NotoSansCJKtc-Bold.otf"
        c.pointsize "40"
        c.gravity "Center"
        c.draw quote_function1
        c.fill "white"
        c.draw quote_function2
        c.fill "white"
        c.draw quote_function3
        c.fill "white"
      end
    when "demo"
      position = 80
      height = 30
      quote_function1 = "translate 90,#{position + height * 0} rotate -17 text 0,0 '#{quote1}'"
      quote_function2 = "translate 100,#{position + height * 1} rotate -17 text 0,0 '#{quote2}'"
      quote_function3 = "translate 110,#{position + height * 2} rotate -17 text 0,0 '#{quote3}'"

      image.combine_options do |c|
        c.font "fonts/NotoSansCJKtc-Bold.otf"
        c.pointsize "20"
        c.draw quote_function1
        c.fill "black"
        c.draw quote_function2
        c.fill "black"
        c.draw quote_function3
        c.fill "black"
      end
    end

    timestamp = Time.now.to_i
    rand = rand(100)
    image_with_quote = "#{filename}-#{timestamp}-#{rand}.jpg"
    image.write("public/quotes/#{image_with_quote}")

    {
      :image => "#{SERVER_NAME}/quotes/#{image_with_quote}",
      :code => 'success'
    }.to_json
  end
end
