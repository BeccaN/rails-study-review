# SELECT * FROM posts WHERE author_id = #{@author.id}
Post.where("author_id = ?", @author.id)

#build creates a new instance
new_post = @author.posts.build(title: "Web Development for Cats")
new_post.save

new_author = @post.build_author(name: "Leeroy Jenkins")

class Post
    has_many :posts_tags
    has_many :tags, through: :posts_tags
  end
   
  class PostsTag
    belongs_to :post
    belongs_to :tag
  end
   
  class Tag
    has_many :posts_tags
    has_many :posts, through: :posts_tags
  end
end

#belongs_to datatype creates an integer post_id column
t.belongs_to :post