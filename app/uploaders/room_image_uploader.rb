class RoomImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
    version :thumbnail do
      resize_to_fit(500,500)
    end
end
