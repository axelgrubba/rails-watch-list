class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, uniqueness: true
  validates :overview, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true

  # before_destroy :ensure_not_referenced_by_any_bookmark

  # private

  # def ensure_not_referenced_by_any_bookmark
  #   return if bookmarks.empty?

  #   errors.add(:base, 'You cannot delete a movie that has bookmarks.')
  #   throw :abort
  # end
end
