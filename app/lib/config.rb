require 'yaml'

class Config
  attr_reader :config

  def initialize
    @config=YAML.load_file("./config/config.yml")
  end

  #
  # Works similarly to "dig", but fetches a property in a loaded YAML file
  #
  def self.get(*args)
    $config ||= Config.new
    if args.size==0
      $config.config
    else
      $config.config.dig(*args.collect{|x| x.to_s})
    end
  end

end