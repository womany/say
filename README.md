## RUN on development

    rainbows -N -p 7777 -c config/rainbows.rb config.ru

# RUN on production

    rainbows -N -o 127.0.0.1 -p 12788 -E production -c rainbows.rb config.ru