class Comment < ActiveRecord::Base
  attr_accessible :content, :commentable_id, :commentable_type, :user_id, :vote_total

  belongs_to :commentable, polymorphic: true
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :content, presence: true
  validates :commentable, presence: true
  validates :user, presence: true

end
