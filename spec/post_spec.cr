require "./spec_helper"

describe Post do
  it "update" do
    # post = PostBox.create
    post = SavePost.create!(title: "Name", enabled: false, notify: false)
    Post::SaveOperation.update!(post, enabled: true)
  end
end
