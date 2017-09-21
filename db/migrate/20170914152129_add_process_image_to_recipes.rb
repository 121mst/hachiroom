class AddProcessImageToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :process_image_01, :string
    add_column :recipes, :process_image_02, :string
    add_column :recipes, :process_image_03, :string
    add_column :recipes, :process_image_04, :string
    add_column :recipes, :process_image_05, :string
    add_column :recipes, :process_image_06, :string
    add_column :recipes, :process_image_07, :string
    add_column :recipes, :process_image_08, :string
    add_column :recipes, :process_image_09, :string
    add_column :recipes, :process_image_10, :string
    add_column :recipes, :process_image_11, :string
    add_column :recipes, :process_image_12, :string
  end
end
