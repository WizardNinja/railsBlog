class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.string :url
    	t.string :user_id
    	t.integer :vote_total, default: 0
      t.timestamps
    end
  end
end
