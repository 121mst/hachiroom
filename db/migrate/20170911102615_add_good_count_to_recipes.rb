class AddGoodCountToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :good_count, :integer
  end
end
