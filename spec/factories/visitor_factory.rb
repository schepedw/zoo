FactoryGirl.define do
  factory :visitor do
    first_name 'John'
    last_name 'Doe'
    dob       Date.today - 20.years
    ssn       '867-53-0912'
    time_admitted Time.now - 20.minutes
  end
end
