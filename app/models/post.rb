class Post < ActiveRecord::Base
  has_many :comments
  validates :text, presence: true, length: { minimum: 1, maximum: 500 }

  def self.load_all
  	post_data = []
  	posts = Post.all.order("created_at DESC")
  	unless posts.nil?
  	  posts.each do |post|
  		  owner = User.find(post.user_id)
  		  post_datum = {post: post.text}
  		  post_datum[:owner] = owner ? owner.name : "Unknown User"
  		  post_data << {owner: owner.name, text: post.text}
  	  end
  	  post_data
  	end
  end
end
