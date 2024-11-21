class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, presence: true
  validates :list, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: 'already associated to the list' }
  validates :comment, presence: true, length: { minimum: 6, message: 'cannot be shorter than 6 characters' }
end
