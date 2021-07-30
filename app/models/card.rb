class Card < ActiveRecord::Base
    belongs_to :collection


    #render the card to send as get request
    def self.render_all
        self.all.map do |c|
            #breaking down what i want to send through to front-end
            {
                name: c.name,
                image: c.image,
                year: c.year,
                description: c.description,
                collection: c.collection

            }
        end
    end
end