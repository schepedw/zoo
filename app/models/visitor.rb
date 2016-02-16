class Visitor
  attr_accessor :first_name, :last_name, :dob, :ssn,
    :time_admitted, :time_exited
  def admit!
    @time_admitted = Time.now
    define_singleton_method(:favorite_animal) do
      @favorite_animal
    end

    define_singleton_method(:favorite_animal=) do |fav|
      @favorite_animal = fav
    end
  end
end
