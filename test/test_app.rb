require_relative "../lib/servicify"

class TestApp < ServiceResult
  attr_reader :a, :b, :opts

  def initialize(a, b, **opts)
    @a = a
    @b = b
    @opts = opts
  end

  def call
    errors.add :validation, "Missing first number." if a.nil?
    errors.add :validation, "Missing second number." if b.nil?
    sum_up unless errors.any?
  end

  private

  def sum_up
    a / b
  rescue ZeroDivisionError => error
    errors.add :zero_division, error.message
  rescue => error
    errors.add :other, error.message
  end
end
