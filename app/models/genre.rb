class Genre < ActiveRecord::Base
  has_many :recipes
end
