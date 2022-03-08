# frozen_string_literal: true

require "./test/test_helper"

class TestObservableApi < Minitest::Test

  def test_version_number
    refute_nil ::ObservableApi::VERSION
  end

  def test_it_does_something_useful
    assert_equal(true, true || false)
  end

end
