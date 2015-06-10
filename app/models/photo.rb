class Photo < ActiveRecord::Base

  acts_as_taggable
  mount_uploader :name, AvatarUploader

  validates :name, presence: true

end
