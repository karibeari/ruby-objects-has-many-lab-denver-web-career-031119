class Author
  attr_accessor :name, :posts

  @@post_count = 0
  def self.post_count
    @@post_count
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @posts << post
    @@post_count += 1
  end

end
