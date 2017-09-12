class AddCostToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :cost, :string
  end
end
