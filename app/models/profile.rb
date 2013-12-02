class Profile < ActiveRecord::Base
belongs_to :user
mount_uploader :picture, PictureUploader
has_many :comments, :dependent => :destroy
validates :comment, length: {in:5..100}
end
