class Dinosaur < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :age, length: { maximum: 5 }, allow_blank: true
  validates :description, format: { with: /\A[a-zA-Z]+\z/,
    message: "Required attribute and only allows letters" }, allow_blank: false
end
