require 'logger'

#
# Setup the logger
#

$logger = Logger.new("#{Config.get(:paths,:logs)}/development.log")
$logger.level = Logger::DEBUG


# Add the logger to all objects in the system, that way logger is always available

module Kernel
  def logger
    $logger
  end

  def self.logger
    $logger
  end
end

