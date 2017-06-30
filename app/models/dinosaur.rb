class Dinosaur < ApplicationRecord
  def is_baby?
    age < 3
  end
end
