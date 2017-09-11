class AddTitleToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :title, :string
    add_column :recipes, :knack, :string
  end
end
