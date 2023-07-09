class User < ApplicationRecord
    has_one_attached :profile_picture

    validates :first_name, presence: true
    validates :last_name, presence: true
    # validates :profile_picture, presence: true
    validate :validate_profile_picture_format

    private

    def validate_profile_picture_format
        return unless profile_picture.attached?
    
        unless profile_picture.blob.content_type.in?(%w[image/jpeg image/jpg image/png])
          errors.add(:profile_picture, 'must be in JPEG, JPG, or PNG format')
        end
    end
end