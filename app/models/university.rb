class University < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :locate
  belongs_to :course
  belongs_to :rank
end