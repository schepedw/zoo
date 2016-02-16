describe "Animals" do
  AppConfig.animals.each do |animal|
    specify "class #{animal} is defined" do
      expect(Object.const_defined?(animal.classify)).to be true
    end

    # the snozberries taste like snozberries!
    specify "a #{animal} knows it's a(n) #{animal}" do
      instance = Object.const_get(animal.classify).new
      expect(instance.send("is_a_#{animal}?".to_sym)).to be true
    end
  end
end
