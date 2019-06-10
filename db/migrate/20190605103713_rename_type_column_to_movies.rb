class RenameTypeColumnToMovies < ActiveRecord::Migration[5.2]
  def change
  	rename_column :movies, :type, :category
  end
end
