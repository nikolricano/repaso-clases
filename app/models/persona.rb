class Persona < ActiveRecord::Base
  has_one :animal
  has_many :animals
  has_many :hijos
end
