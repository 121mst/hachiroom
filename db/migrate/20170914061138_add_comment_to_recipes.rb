class AddCommentToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :comment, :string
  end
end
