class Blog < Mosaic::Module
  respond_to :get, "/blog"
  respond_to :get, "/blog/:post"
  
  def handle
    @response.content = :"blog/index.html" unless @params[:post]
    @response.content = :"blog/show.html" if @params[:post]
  end
  
  def self.posts
    @posts = []
    Dir.entries("app/blog_posts/").each do |post|
      @posts.push(post) if post != "." && post != ".."
    end
    return @posts.sort.reverse
  end
end