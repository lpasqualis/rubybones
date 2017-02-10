if Config.get(:features,:db)

  require 'active_record'

  ActiveRecord::Base.logger = $logger

  ActiveRecord::Base.establish_connection(
      adapter:   'mysql2',
      host:      'localhost',
      database:  Config.get(:db,:dbname)    || ENV['DBCONF_DBNAME'],
      username:  Config.get(:db,:username)  || ENV['DBCONF_USERNAME'],
      password:  Config.get(:db,:password)  || ENV['DBCONF_PASSWORD']
      #encoding:   'utf8',
      #collation:  'utf8_unicode_ci'
  )

  Dir.glob("./lib/models/*.rb").each do |r|
    require r
  end

  Dir.glob("./lib/models/**/*.rb").each do |r|
    require r
  end

end
