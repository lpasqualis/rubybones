class RubyBonesApp

  DEFAULT_ENV  = 'development'
  ENV_VARIABLE = 'RUBYAPP_ENV'

  #
  # Return the environment
  #
  def self.env
    ENV[ENV_VARIABLE] || DEFAULT_ENV
  end

end
