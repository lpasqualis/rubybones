
#
# This Initializer contains requires that should be available as part of the environment
#

require './app/lib/config'

if Config.get(:features,:db)
  require 'active_record'
end

#require 'pp'
#require 'active_model'
