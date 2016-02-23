class AddAnimals < ActiveRecord::Migration
  #TODO 2
  def up
    # Animal would probably just be one class, and 
    # there'd different types of animals
    # But doing that would be easy.
    #
    # Take a look at etc/animals.yml and spec/models/animal_spec.rb 
    # before you write any code
    #
    # I won't tell you how to structure your table(s)
    # There are multiple ways to skin this cat
    create_table :animals do |t|
      t.timestamps null: false
      t.string :type
    end
  end

  def down
    drop_table :animals
  end
end
