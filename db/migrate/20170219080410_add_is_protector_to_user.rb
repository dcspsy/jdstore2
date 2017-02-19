class AddIsProtectorToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users,:is_protector,:boolean,default:false
  end
end
