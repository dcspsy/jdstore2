class AddProtectThemTo < ActiveRecord::Migration[5.0]
  def change
    add_column :products,:protect_them,:boolean,default:false
  end
end
