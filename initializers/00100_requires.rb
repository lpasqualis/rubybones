
#
# This Initializer contains requires that should be available as part of the environment
#

require './app/lib/config'
require 'pp'

if Config.get(:features,:db)
  require 'active_record'
end
