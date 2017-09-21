class Recipe < ActiveRecord::Base
  #titleへの空の値の入力を禁止
  validates :title,  presence: true
  mount_uploader :recipe_image, RecipeImageUploader
  mount_uploader :process_image_01, RecipeImageUploader
  mount_uploader :process_image_02, RecipeImageUploader
  mount_uploader :process_image_03, RecipeImageUploader
  mount_uploader :process_image_04, RecipeImageUploader
  mount_uploader :process_image_05, RecipeImageUploader
  mount_uploader :process_image_06, RecipeImageUploader
  mount_uploader :process_image_07, RecipeImageUploader
  mount_uploader :process_image_08, RecipeImageUploader
  mount_uploader :process_image_09, RecipeImageUploader
  mount_uploader :process_image_10, RecipeImageUploader
  mount_uploader :process_image_11, RecipeImageUploader
  mount_uploader :process_image_12, RecipeImageUploader
  belongs_to :user
  # CommentモデルのAssociationを設定
  has_many :comments, dependent: :destroy
end
