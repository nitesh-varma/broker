class Property < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  validates :active, presence: true, length: { minimum: 2, maximum: 3 }
  validates :status, presence: true, length: { minimum: 3, maximum: 15 }
  validates :neighborhood, presence: true, length: { minimum: 2, maximum: 20 }
  validates :price, presence: true, length: { minimum: 3, maximum: 10 }
  validates :address, presence: true, length: { minimum: 3, maximum: 100 }
  validates :proximity, presence: true, length: { minimum: 3, maximum: 100 }
  validates :description, presence: true, length: { minimum: 3 }
  validates :doorman, presence: true, length: { minimum: 2, maximum: 3 }
  validates :outdoor, presence: true, length: { minimum: 2, maximum: 3 }
  validates :property_type, presence: true, length: { minimum: 3, maximum: 15 }
  validates :bed, presence: true, length: { minimum: 1, maximum: 2 }
  validates :bath, presence: true, length: { minimum: 1, maximum: 2 }
  validates :images, presence: true, length: { minimum: 1, maximum: 2 }
  validates :images_folder, presence: true, length: { minimum: 5, maximum: 20 }
end
