class AddAnimals < ActiveRecord::Migration
  #TODO 2
  def up
    AppConfig.animals.each do |animal|
      create_table animal.pluralize do |t|
        t.string :animal_type, default: animal
        t.timestamps
      end
    end
  end

  def down
    AppConfig.animals.each do |animal|
      drop_table animal.pluralize
    end
  end
end
