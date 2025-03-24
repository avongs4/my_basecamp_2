class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # has_secure_password  # Ensures password security
    has_many :projects
    has_many :messages
  
    before_save :set_default_role
  
    private
  
    def set_default_role
      self.role ||= "user"
    end
  end
  