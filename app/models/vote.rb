class Vote < ActiveRecord::Base
  attr_accessible :value, :user_id, :votable_id, :votable_type

  after_save :submit_vote

  belongs_to :user
  belongs_to :votable, polymorphic: true

  private

  def submit_vote
  	model = self.votable
  	count = model.vote_total
  	count += self.value
  	model.update_attributes(vote_total: count)
  end
end
