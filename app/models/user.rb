class User < ApplicationRecord
  has_many :matchings
  has_many :locations
  has_many :authored_conversations, class_name: 'Conversation', foreign_key: 'author_id'
  has_many :received_conversations, class_name: 'Conversation', foreign_key: 'received_id'
  has_many :personal_messages, dependent: :destroy

  
  
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates_integrity_of  :avatar
         validates_processing_of :avatar
         validates :date_of_birth, :presence => {:message => 'Please enter date of birth.'}
         validates :avatar, :presence => true
         geocoded_by :current_sign_in_ip,
        :latitude => :lat, :longitude => :lon
        after_validation :geocode

        def name
          email.split('@')[0]
        end
 
 

  private
    def avatar_size_validation
      errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
    end
end
