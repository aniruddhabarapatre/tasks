require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe "GET /tasks" do
    it "it display some task" do
      @task = Task.create :task => "go to bed"

      visit tasks_path
      page.should have_content "go to bed"
    end
  end
end
