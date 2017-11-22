class Post < ApplicationRecord
    mount_uploader :image,  AttachmentUploader 
    belongs_to :user
    acts_as_likeable
    acts_as_followable
end
