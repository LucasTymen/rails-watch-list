class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_uniqueness_of :movie, :scope => [:list_id]
  validates :movie, presence: true
  validates :list, presence: true
  has_many :Bookmark
  has_many :lists
  validates :comment, length: { minimum: 6 }

end
