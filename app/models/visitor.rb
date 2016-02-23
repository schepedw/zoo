class Visitor
  include ActiveModel::Model

  attr_accessor :first_name, :last_name, :dob, :ssn,
    :time_admitted, :time_exited

  def admit!
    class << self
      define_method('favorite_animal'.to_sym) do
        @favorite_animal
      end
      define_method('favorite_animal='.to_sym) do |animal|
        @favorite_animal = animal
      end
    end
  end
end
