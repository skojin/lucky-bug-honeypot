require "./spec_helper"

describe Post do
  it "update" do
    post = SavePost.create!(title: "Name", enabled: false, notify: false)
    Post::SaveOperation.update!(post, enabled: true)
  end
end
