class PersonasController < ApplicationController
  def index
    @a = Persona.first
  end

  def dime_mascotas
    @a = Persona.find(Animal.first.persona)
    @a = Persona.first.animals
  end

  def cantidad
    @a = Persona.first

  end
end
