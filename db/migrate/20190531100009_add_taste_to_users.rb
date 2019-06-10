class AddTasteToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :taste, :text
  end
end
