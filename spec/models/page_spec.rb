require 'rails_helper'
require 'http_url_validator.rb'

RSpec.describe Page, type: :model do
  context 'validations' do
    it { should validate_presence_of(:url) }

    pageValid = Page.create(:url => "http://www.google.com", :shortenUrl => "c")
    pageInValidWrongUrl = Page.create(:url => "www.google.com", :shortenUrl => "c")
    pageInValidEmptyUrl = Page.create(:url => "", :shortenUrl => "c")

    it "url should be valid" do
      x = HttpUrlValidator.compliant?(pageValid.url)
      expect(x).to eq true
    end

    it "page should be valid" do
      expect(pageValid).to be_valid
    end

    it "empty url should be invalid" do
      expect(pageInValidEmptyUrl).to be_invalid
    end

    it "url should be invalid" do
      x = HttpUrlValidator.compliant?(pageInValidWrongUrl.url)
      expect(x).to eq false
    end
  end
end
