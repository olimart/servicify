require "test_helper"

class ServicifyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Servicify::VERSION
  end

  def test_module_is_declared
    assert_kind_of Module, Servicify
  end
end
