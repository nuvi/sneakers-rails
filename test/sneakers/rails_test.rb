require 'test_helper'

class Sneakers::Rails::Test < ActiveSupport::TestCase
  test "dynamically builds the WORKERS environment variable" do
    assert ENV["WORKERS"].present?, "should set a WORKERS env variable"
    assert ENV["WORKERS"].is_a?(String), "should set a variable that is a string"
    discovered_workers = ENV["WORKERS"].split(",")
    assert discovered_workers.includes?("CoolModelHansel"), "Should have included constant name because it included the Sneakers::Worker"
    assert discovered_workers.includes?("ThanksOlaf"), "Should have included constant name because it included the Sneakers::Worker"
    refute discovered_workers.includes?("PianoNecktie"), "Should NOT have included constant name because it DID NOT included the Sneakers::Worker"
  end
end
