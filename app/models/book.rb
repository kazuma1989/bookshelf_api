class Book < ApplicationRecord
  VALID_URL_REGEX = /\Ahttps?:\/\/[^\s\/$.?#].[^\s]*\z/

  validates :name     , presence: true,    length: { maximum: 1000  }
  validates :thumbnail, allow_blank: true, length: { maximum: 1000  }, format: { with: VALID_URL_REGEX }
  validates :author   , presence: true,    length: { maximum: 1000  }
  validates :url      , presence: true,    length: { maximum: 1000  }, format: { with: VALID_URL_REGEX }
  validates :note     , allow_blank: true, length: { maximum: 10000 }
end
