class AddAnimalToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :animal, :string, default:"normal"
  end
end
