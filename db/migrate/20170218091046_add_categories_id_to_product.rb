class AddCategoriesIdToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :categorie, :string
    add_column :products, :stars_number, :integer
  end
end
