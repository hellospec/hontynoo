# frozen_string_literal: true

require "test_helper"
require "date"

class TestForecast < Minitest::Spec
  describe "#rasi" do
    it "have stars in associated rasi" do
      monday7 = ::DateTime.new(2018, 4, 23, 15, 15)
      hontynoo = Hontynoo::Forecast.new(monday7)

      assert_equal %w(๕ ๖ ล), hontynoo.rasi["2"]
    end
  end
end
