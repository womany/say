## RUN on development

    rainbows -N -p 7777 -c config/rainbows.rb config.ru

# RUN on production

    rainbows -c rainbows.rb config.ru -E production -D