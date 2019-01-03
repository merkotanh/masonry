class Pin < ApplicationRecord
   mount_uploader :image, ImageUploader
end