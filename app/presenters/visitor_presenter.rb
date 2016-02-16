class VisitorPresenter
  attr_reader :visitor

  def initialize(visitor)
    @visitor = visitor
  end

  #TODO 3: DRY this class out. You should be able to condense
  #the first 6 methods to one line

  def first_name
    @visitor.first_name
  end

  def last_name
    @visitor.last_name
  end

  def dob
    @visitor.dob
  end

  def ssn
    @visitor.ssn
  end

  def time_admitted
    @visitor.time_admitted
  end

  def time_exited
    @visitor.time_exited
  end
end
