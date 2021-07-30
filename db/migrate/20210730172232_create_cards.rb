class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.text :name
      t.text :image
      t.text :year
      t.text :description
      t.belongs_to :collection
    end
  end
end
