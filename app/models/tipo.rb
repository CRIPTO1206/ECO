class Tipo < ApplicationRecord
  has_and_belongs_to_many :puntos
end
