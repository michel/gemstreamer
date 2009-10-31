require 'rest_client'

class Gemstreamer::Publisher
  def initialize(host,user,app,api_key=nil)
    @host = host
    @user = user
    @app = app
    @api_key =  api_key
  end
  
  
  def build_hash(gems)
    dep_hash = {}
    gems.each do |g|
      #it works but its ugly!
      dep_hash[g.name] = g.version_requirements.requirements.last.last.version
    end
    dep_hash 
  end
  
  def publish_dependencies(gems)    
    dep_hash = build_hash(gems)        
    #todo apikey / authorisation
    RestClient.post "#{@host}/users/#{@user}/applications/#{@app}/deps", {"dependencies" => dep_hash } 
  end
end
