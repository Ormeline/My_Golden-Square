require 'test/unit'

class TestGratitudes < Test::Unit::TestCase
  def setup
    @gratitudes = Gratitudes.new
  end

  def test_add
    @gratitudes.add("family")
    assert_equal(["family"], @gratitudes.instance_variable_get(:@gratitudes))

    @gratitudes.add("friends")
    assert_equal(["family", "friends"], @gratitudes.instance_variable_get(:@gratitudes))
  end

  def test_format
    assert_equal("Be grateful for: ", @gratitudes.format)

    @gratitudes.add("family")
    assert_equal("Be grateful for: family", @gratitudes.format)

    @gratitudes.add("friends")
  
    @gratitudes.add("health")
    assert_equal("Be grateful for: family, friends, health", @gratitudes.format)
  end
end
