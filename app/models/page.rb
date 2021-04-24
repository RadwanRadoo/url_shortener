class Page < ApplicationRecord
  validates :url, http_url: true, presence: true
end
