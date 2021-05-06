require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "New q title", body: "New q body", resolved: true) }
  let(:answer) { Answer.create!(body: "New a body", question: question) }

  describe "attributes" do
    it "has a body attribute" do
      expect(answer).to have_attributes(body: "New a body")
    end
  end
end
