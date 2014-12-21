class Course < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :universities
end