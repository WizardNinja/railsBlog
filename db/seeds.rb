# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(username: "wizardninja", email: "winjacan@gmail.com", 
	password: "password", password_confirmation: "password")

post = Post.create(title: "CatParty", url: "http://www.youtube.com/watch?v=anCVuxP9NA0", 
	user_id: user.id)

comment = Comment.create(content: "dude is that cat party?", user_id: user.id, 
	commentable_id: post.id, commentable_type: "Post")

comment_comment = Comment.create(content: "Yep", user_id: user.id,
	commentable_id: comment.id, commentable_type: "Comment")

vote_post = Vote.create(value: 1, user_id: user.id, 
	votable_id: post.id, votable_type: "Post")

vote_comment = Vote.create(value: 1, user_id: user.id, 
	votable_id: comment.id, votable_type: "Comment")



