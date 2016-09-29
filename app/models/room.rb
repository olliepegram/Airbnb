class Room < ApplicationRecord
  belongs_to :user

  # mount_uploader :picture, RoomImageUploader
  mount_uploaders :pictures, PicturesUploader
  serialize :pictures, Array

   validates :bathroom, :accommadates, numericality: { :greater_than => 0 }

   validates :name, :description, :accommadates, :bathroom, :price, presence: true

   def self.search(search)
     where("name LIKE ?", "%#{search}%")
     where("description LIKE ?", "%#{search}%")
   end
end
