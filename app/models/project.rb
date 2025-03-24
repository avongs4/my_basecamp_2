class Project < ApplicationRecord
  belongs_to :user
  has_many :discussion_threads, dependent: :destroy
end
