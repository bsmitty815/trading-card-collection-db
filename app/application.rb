
class Application
    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)
  
        # handle all routes and send appropriate responses


        #POST
        if req.path.match(/cards/) && req.post?
          binding.pry
          hash = JSON.parse(req.body.read) #we get the data inputted parse it so ruby can read it
          newCard = Card.create(hash)

          return [200, {"Content-Type" => "application/json"}, [{message: "Card successfully created", card: newCard}.to_json]]




        #DELETE
        #elsif req.path.match(/cards/) && req.delete?



        #PATCH
        #elsif req.path.match(/cards/) && req.post?



        #GET
        elsif req.path.match(/cards/) && req.get?
            return [200, {"Content-Type" => "application/json"}, [{message: "request successful", cards: Card.render_all}.to_json]]

        else

            resp.write "Path Not Found"
            resp.status = 404
        
        end

        resp.finish



    end
  end
  