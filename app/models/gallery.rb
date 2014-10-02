class Gallery < ActiveRecord::Base
  #has_many :images
  has_many :images, as: :imageable
  belongs_to :user
end
