require 'logger'

#
# Setup the logger
#

$logger = Logger.new("#{Config.get(:paths,:logs)}/development.log")
$logger.level = Logger::DEBUG

module Kernel
  def logger
    $logger
  end

  def self.logger
    $logger
  end
end
