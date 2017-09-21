class RemoveProcessToRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :process_image_01
    remove_column :recipes, :process_image_02
    remove_column :recipes, :process_image_03
    remove_column :recipes, :process_image_04
    remove_column :recipes, :process_image_05
    remove_column :recipes, :process_image_06
    remove_column :recipes, :process_image_07
    remove_column :recipes, :process_image_08
    remove_column :recipes, :process_image_09
    remove_column :recipes, :process_image_10
    remove_column :recipes, :process_image_11
    remove_column :recipes, :process_image_12
  end
end
