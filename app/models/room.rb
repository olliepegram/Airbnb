class Room < ApplicationRecord
  belongs_to :user

  mount_uploader :picture, RoomImageUploader

   validates :bathroom, :accommadates, numericality: { :greater_than => 0 }

   validates :name, :description, :accommadates, :bathroom, :price, presence: true
end
