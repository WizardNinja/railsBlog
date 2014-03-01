class Post < ActiveRecord::Base
  attr_accessible :title, :url, :user_id, :vote_total

  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :votable

  validates :url, presence: true
  validates :title, presence: true
  validates :user, presence: true

end
