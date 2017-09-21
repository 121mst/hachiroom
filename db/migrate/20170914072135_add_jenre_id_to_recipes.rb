class AddJenreIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :genre_id, :integer
  end
end
