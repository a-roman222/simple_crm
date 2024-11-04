class Customer < ApplicationRecord

  has_one_attached :image

  validates :full_name, presence: true

  def self.ransackable_associations(auth_object = nil)
    []
  end

  def self.ransackable_attributes(auth_object = nil)
    ["full_name"]
  end
end
