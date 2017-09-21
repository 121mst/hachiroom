class AddJenreToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :genre, :string
  end
end
