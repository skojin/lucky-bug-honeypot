class Posts::ShowPage < MainLayout
  needs post : Post
  quick_def page_title, "Post with id: #{post.id}"

  def content
    link "Back to all Posts", Posts::Index
    h1 "Post with id: #{post.id}"
    render_actions
    render_post_fields
  end

  def render_actions
    section do
      link "Edit", Posts::Edit.with(post.id)
      text " | "
      link "Toggle",
        Posts::Delete.with(post.id)
    end
  end

  def render_post_fields
    ul do
      li do
        text "title: "
        strong post.title.to_s
      end
      li do
        text "enabled: "
        strong post.enabled.to_s
      end
      li do
        text "notify: "
        strong post.notify.to_s
      end
    end
  end
end
