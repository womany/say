# RUN on development

    rainbows -N -p 7777 -c rainbows.rb config.ru

# RUN on Server

    docker run -d -p 80:7777 -e SERVER_NAME=yourservername wildjcrt/say