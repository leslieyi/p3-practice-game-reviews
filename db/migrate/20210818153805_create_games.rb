class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :platform
      t.integer :category_id
      t.integer :user_id 
      t.integer :review_id 

    end
  end
end