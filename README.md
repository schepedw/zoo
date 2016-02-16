## README

Programming is neat. But as lazy programmers, we sometimes want
our code to write code for us. In comes metaprogramming, which does
not manipulate data, but instead manipulates the structure and
function of our code.

This exercise will give you a quick intro. Simply follow the `TODO`s -
they're listed both here and in the code.

### Requirements

* Set to run 2.2.2, but any modern ruby will do

* Postgres db

* `weekly_workshop` db user

### Setup

* `bundle exec rake db:create db:migrate`

* `bundle exec rspec` - will fail, shouldn't error

## Get Coding
* Secure the prices at your `admissions_gate`. When done,
  `admissions_gate_spec.rb` should pass.

* Create your animals. Check out the migration in `db/migrate`. When
  you've completed this correctly, `spec/models/animal_spec.rb` should
pass
  * you have to have your animals backed by a db.
  * during development, you'll have to db:rollback db:migrate to re-run
    your migrations until they're correct

* Get ready for visitors. Complete TODO 3 in `visitor_presenter`.
  There are tests to back your refactoring.

* Admit some people! Check out TODO 4, which is demonstrated in
  spec/models/visitor_spec.rb 

### Resources

Through this exercise, you should've come across the following concepts

* [method delegation](http://apidock.com/rails/Module/delegate)
* [answering missing methods](http://rubylearning.com/satishtalim/ruby_method_missing.html)
* [dynamically defining methods](http://apidock.com/ruby/Object/define_singleton_method)
* [Active record
  inheritance](http://api.rubyonrails.org/classes/ActiveRecord/Inheritance.html)
* [Dynamic Constant
  Definition](http://ruby-doc.org/core-2.1.0/Module.html#method-i-const_set) _you may not have used this, depending on how you did #2_
