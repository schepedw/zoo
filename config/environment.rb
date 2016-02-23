# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

AppConfig.animals.each do |animal|
  Object.const_set(animal.classify, Class.new(Animal) { })
  animal_class = Object.const_get(animal.classify)

  animal_class.send(:define_method, "is_a_#{animal}?".to_sym) do
    __method__.to_s.match(/is_a_(.+)\?/)[1].downcase == self.class.to_s.downcase
  end
end
