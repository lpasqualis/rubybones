######################################################################################################################
# This is the main Rakefile. Contains the most important entrypoints for the various aspects of teh application.
#

#
# Load the environment
#
load 'environment.rb'

#
# Load all the tasks, so they become avaialble in the rake context
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


desc "Prints the description of what the application is and does."
task :info do
  puts "This is a skeleton application, it doesn't do anything yet."
end


desc "Initialize the DB. Change this to include the proper procedure"
task :init_db do
  if Config.get(:features,:db)
    `cat config/init_db.sql | mysql -u root -p`
  else
    puts "No database in the list of features"
  end
end
