require 'yaml'

class Config
  attr_reader :config

  @@singleton = nil

  def initialize
    @config=YAML.load_file("./config/config.yml")

    if RubyBonesApp.env
      env_specific_config = "./config/config_#{RubyBonesApp.env}.yml"
      config_merge!(@config,YAML.load_file(env_specific_config)) if File.exist?(env_specific_config)
    end

  end

  def get(*args)
    if args.size==0
      @config
    else
      @config.dig(*args.collect{|x| x.to_s})
    end
  end

  #
  # Works similarly to "dig", but fetches a property in a loaded YAML file
  #
  def self.get(*args)
    @@singleton ||= Config.new
    @@singleton.get(*args)
  end

  def config_merge!(first_hash,other_hash)
    other_hash.each_pair do |current_key, other_value|
      this_value = first_hash[current_key]

      first_hash[current_key] = if this_value.is_a?(Hash) && other_value.is_a?(Hash)
        config_merge!(this_value,other_value)
      else
        other_value
      end
    end
    first_hash
  end

end