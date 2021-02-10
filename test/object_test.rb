require "test_helper"
require "test_app"

class ObjectTest < Minitest::Test
  def test_initialize_and_provide_success_method
    service = TestApp.call(1, 1)
    assert service.success?
    assert 2, service.result
    assert service.errors.empty?
  end

  def test_returns_result
    service = TestApp.call(1, 1)
    assert 2, service.result
  end

  def test_provide_failure_method
    service = TestApp.call("1", "2")
    assert service.failure?
    refute service.errors.empty?
    assert service.errors.has_key?(:other)
  end
end
