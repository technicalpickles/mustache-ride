class Posts::Index < Mustache::Rails
  def posts
    Post.all.map do |post|
      {
        :title => h(post.title),
        :content => h(post.content),
        :published_at => h(post.published_at),
        :show_href => post_path(post),
        :edit_href => edit_post_path(post)
      }
    end
  end

  def new_post_href
    new_post_path
  end
end
