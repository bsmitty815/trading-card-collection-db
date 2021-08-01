
class Application
    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)
  
        # handle all routes and send appropriate responses


        #POST
        if req.path.match(/cards/) && req.post?

          hash = JSON.parse(req.body.read) #we get the data inputted parse it so ruby can read it
          cardCollection = Collection.findy_by(name: hash["card_type"])
          newCard = Card.create({
            name: hash.name,
            image: hash.image,
            year: hash.year,
            description: hash.description,
            collection: cardCollection.card_type
          })

          if card.save

            return [200, {"Content-Type" => "application/json"}, [{message: "Card successfully created", card: newCard}.to_json]]

          else

            return [422, {"Content-Type" => "application/json"}, [{error: "Card not saved"}.to_json]]

          end
          




        #DELETE
        elsif req.path.match(/cards/) && req.delete?
          id = req.path.split(/cards/).last.to_i
          card = Card.findy_by_id(id)
          deletedCard = {
                id: card.id,
                name: card.name,
                image: card.image,
                year: card.year,
                description: card.description
        }
          if task.save

            return [200, {"Content-Type" => "application/json"}, [{message: "Card successfully deleted", card: deletedCard}.to_json]]

          else

            return [422, {"Content-Type" => "application/json"}, [{error: "Failed to delete"}.to_json]]

          end

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
  