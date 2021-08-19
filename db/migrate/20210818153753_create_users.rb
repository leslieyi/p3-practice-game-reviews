class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :game_id
      t.integer :review_id
    end
  end
end
