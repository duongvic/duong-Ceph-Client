require "test_helper"

class Ceph::ClientTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ceph::Client::VERSION
  end
end
