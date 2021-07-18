class Note < ApplicationRecord
  validates :title, length: { minimum: 3,
                              maximum: 50 }

  validates :body, length: { maximum: 1000 }
end
