class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  mount_uploader  :thumbnail, UserThumbnailUploader

  validates  :name, presence: true
  validates  :agreement, presence: true, acceptance: {accept: true}
end
