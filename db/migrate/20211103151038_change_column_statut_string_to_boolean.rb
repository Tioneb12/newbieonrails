class ChangeColumnStatutStringToBoolean < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :statut
    add_column :posts, :statut, :boolean, default: false
  end
end
