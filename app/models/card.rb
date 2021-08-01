class Card < ActiveRecord::Base
    belongs_to :collection


    #render the card to send as get request
    def self.render_all
        self.all.map do |c|
            #breaking down what i want to send through to front-end
            {
                id: c.id,
                name: c.name,
                image: c.image,
                year: c.year,
                description: c.description,
                collection: c.collection.card_type

            }
        end
    end
end