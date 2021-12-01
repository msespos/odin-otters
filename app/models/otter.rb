class Otter < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: { only_integer: true }
  validates :cuteness, numericality: { only_integer: true, greater_than: 0,
                                       less_than_or_equal_to: 10 }
  validates :softness, numericality: { only_integer: true, greater_than: 0,
                                       less_than_or_equal_to: 10 }
end
