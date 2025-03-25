class Project < ApplicationRecord
  belongs_to :user
  has_many :discussion_threads, dependent: :destroy



  
    validates :title, presence: true
    validates :description, presence: true
    validates :user, presence: true  # This could be causing issues if user is nil
  
end
