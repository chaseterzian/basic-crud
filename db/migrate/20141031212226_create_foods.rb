class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :description
      t.string :best_ingredient
      t.integer :rating
    end
  end
end
