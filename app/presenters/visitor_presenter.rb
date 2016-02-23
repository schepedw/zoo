class VisitorPresenter
  attr_reader :visitor

  delegate :first_name, :last_name, :dob, :ssn, :time_admitted, :time_exited, to: :visitor

  def initialize(visitor)
    @visitor = visitor
  end
end
