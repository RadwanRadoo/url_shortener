class Page < ApplicationRecord
  validates :url, http_url: true
end
