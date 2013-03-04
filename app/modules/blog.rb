class Blog < Mosaic::Module
  respond_to :get, "/blog.?:format?"
  respond_to :get, "/blog/:post"
  
  def handle
    format = "html"
    format = @params[:format].split(".").last if @params[:format]
    format = "html" if format == "blog"
    @response.layout = :"layouts/application.#{format}"
    @response.content = :"blog/index.#{format}" unless @params[:post]
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