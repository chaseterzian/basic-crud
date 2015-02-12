class AddTriedColumn < ActiveRecord::Migration
  def change
    add_column :foods, :tried, :boolean
  end
end
