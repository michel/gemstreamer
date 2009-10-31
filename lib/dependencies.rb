class Gemstreamer::Dependencies
  def initialize(path)
    @path = path
  end
  
  def load_env
    begin
      require "#{@path}/config/environment"
    rescue
      raise "NoEnvironment"
    end    
  end
  
  def dependencies
    load_env    
    Rails.configuration.gems
  end
end
