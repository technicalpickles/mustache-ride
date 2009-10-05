class Posts::New < Mustache::Rails

  def action_path
    posts_path
  end

  def error_messages
    
  end

  def title
    post.title
  end

  def content
    post.content
  end

  def authenticity_token
    @controller.form_authenticity_token
  end

  def post
    @post ||= Post.new(params[:post])
  end

end
