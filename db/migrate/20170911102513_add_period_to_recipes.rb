class AddPeriodToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :period, :string
  end
end
