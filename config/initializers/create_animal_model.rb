animals = AppConfig.animals.map do |animal|
 Object.const_set(animal.classify, Class.new(ActiveRecord::Base))
end

animals.each do |animal_class|
  AppConfig.animals.each do |animal|
    animal_class.send(:define_method, "is_a_#{animal}?".to_sym, lambda { animal_type == animal })
  end
end
