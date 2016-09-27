class Room < ApplicationRecord
  belongs_to :user

   validates :bathroom, :accommadates, numericality: { :greater_than => 0 }

   validates :name, :description, :accommadates, :bathroom, :price, presence: true
end
