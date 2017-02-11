######################################################################################################################
# This is the main Rakefile. Contains the most important entrypoints for the various aspects of teh application.
#

#
# Load the environment
#
load 'environment.rb'
require 'json'

#
# Load all the tasks, so they become available in the rake context
#
Dir.glob("#{Config.get(:paths,:root)}/app/tasks/*.rake").each do |r|
  load r
end

######################################################################################################################

task :default => :info

desc "Run DB migrations"
task :migrate do
  if Config.get(:features,:db)
    ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
  else
    puts "No database in the list of features"
  end
end


desc "Information about the application."
task :info do
  puts "\nEnvironment: #{RubyBonesApp.env}\n\n"
  puts JSON.pretty_generate Config.get
end


desc "Initialize the DB."
task :init_db do
  if Config.get(:features,:db)
    `cat config/init_db.sql | sed 's/\\$ENV\\$/#{RubyBonesApp.env}/' | mysql -u root -p`
    if RubyBonesApp.env
      env_specific = "config/init_#{RubyBonesApp.env}.sql"
      `cat #{env_specific} | sed 's/\\$ENV\\$/#{RubyBonesApp.env}/' | mysql -u root -p` if File.exist?(env_specific)
    end
  else
    puts "No database in the list of features"
  end
end
