class Recipe < ActiveRecord::Base
  #titleへの空の値の入力を禁止
  validates :title,  presence: true
  belongs_to :user
end
