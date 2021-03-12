class Application
    
    def call(env)
        resp =Rack::Response.new
        
        time=Time.now
    
        if time.hour<12
            resp.write "good morning"        
        else
            resp.write "good afternoon"
        end
        resp.finish
    end
end