class List < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :name, :scope => [:name]
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
end
