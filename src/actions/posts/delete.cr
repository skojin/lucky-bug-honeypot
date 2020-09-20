class Posts::Delete < BrowserAction
  route do
    # PostQuery.find(post_id).delete
    post = PostQuery.find(post_id)
    Post::SaveOperation.update!(post, enabled: !post.enabled)
    redirect Index
  end
end
