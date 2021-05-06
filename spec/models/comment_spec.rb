require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:post) { Post.create!(title: "New post title", body: "New post body") }
  let(:comment) { Comment.create!(body: "New comment body", post: post) }

  describe "attributes" do
    it "has a body attribute" do
      expect(comment).to have_attributes(body: "New comment body")
    end
  end
end
