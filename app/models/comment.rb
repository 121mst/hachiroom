class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe
  has_many :notifications, dependent: :destroy
end
