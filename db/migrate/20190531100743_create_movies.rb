class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :day
      t.text :caption
      t.string :type
      t.string :country

      t.timestamps
    end
  end
end
