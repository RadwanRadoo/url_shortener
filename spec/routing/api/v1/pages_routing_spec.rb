require "rails_helper"

RSpec.describe Api::V1::PagesController, type: :routing do
  describe "routing" do
    it "routes to #" do
      expect(get: "/api/v1/pages/dddd").to route_to(
        {"format"=>:json, "controller"=>"api/v1/pages", "action"=>"show", "slug"=>"dddd"})
    end

    it "routes to #create" do
      expect(post: "/api/v1/pages/").to route_to(
        {"format"=>:json, "controller"=>"api/v1/pages", "action"=>"create"})
    end
  end
end
