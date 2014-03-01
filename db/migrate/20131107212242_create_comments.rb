class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :content
    	t.integer :user_id
    	t.integer :commentable_id
    	t.string :commentable_type
    	t.integer :vote_total, default: 0		
      t.timestamps
    end
  end
end