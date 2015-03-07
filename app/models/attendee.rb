class Attendee < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  validates :name, :address, presence: true
  geocoded_by :address
  after_validation :geocode
end
