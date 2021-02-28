class Application

    def call(env)
      resp = Rack::Response.new
  
      before_noon = Time.now.hour
  
      resp.write "Good Morning!\n"
      resp.write "Good Afternoon!\n"
    
      if before_noon <= 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
  end 
  