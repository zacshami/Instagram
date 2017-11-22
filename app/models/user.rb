class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true

  has_many :posts
  
  
  acts_as_follower
  
  acts_as_liker
  
  acts_as_followable
  #act_as_mentioner
  #act_as_mentionable 
  
end
