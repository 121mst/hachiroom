class AddProcessToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :process_01, :text
    add_column :recipes, :process_02, :text
    add_column :recipes, :process_03, :text
    add_column :recipes, :process_04, :text
    add_column :recipes, :process_05, :text
    add_column :recipes, :process_06, :text
    add_column :recipes, :process_07, :text
    add_column :recipes, :process_08, :text
    add_column :recipes, :process_09, :text
    add_column :recipes, :process_10, :text
    add_column :recipes, :process_11, :text
    add_column :recipes, :process_12, :text
    add_column :recipes, :process_image_01, :text
    add_column :recipes, :process_image_02, :text
    add_column :recipes, :process_image_03, :text
    add_column :recipes, :process_image_04, :text
    add_column :recipes, :process_image_05, :text
    add_column :recipes, :process_image_06, :text
    add_column :recipes, :process_image_07, :text
    add_column :recipes, :process_image_08, :text
    add_column :recipes, :process_image_09, :text
    add_column :recipes, :process_image_10, :text
    add_column :recipes, :process_image_11, :text
    add_column :recipes, :process_image_12, :text
  end
end
