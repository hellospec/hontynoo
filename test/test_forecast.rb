# frozen_string_literal: true

require "test_helper"
require "date"

module Hontynoo
  class TestForecast < Minitest::Spec
    describe "#rasi" do
      it "have stars in associated rasi" do
        monday7 = ::DateTime.new(2018, 4, 23, 15, 15)
        forecast = Forecast.new(monday7)

        assert_equal %w(๕ ๖ ล), forecast.rasi["2"]
      end
    end

    describe "#lakhana_index and #house_end" do
      it "pass case# 1" do
        friday = DateTime.new(2018,3,23,15,15)
        forecast = Forecast.new(friday)

        assert_equal 3, forecast.lakhana_index
      end

      it "pass case# 2 at boundary" do
        sunday = DateTime.new(2018,3,25,22,30)
        forecast = Forecast.new(sunday)

        assert_equal 4, forecast.lakhana_index
        assert_equal "สหัสชะ", forecast.house_end
      end

      it "pass case# 3" do
        sunday = DateTime.new(2018,3,25,23,22,00)
        forecast = Forecast.new(sunday)

        assert_equal 4, forecast.lakhana_index
        assert_equal "ศุภภะ", forecast.house_end
      end

      it "pass case# 4" do
        monday = DateTime.new(2018,3,26,23,50,00)
        forecast = Forecast.new(monday)

        assert_equal 11, forecast.lakhana_index
        assert_equal 2, forecast.distance_house_end
        assert_equal "สหัสชะ", forecast.house_end
      end

      it "pass case# 5 possible of negative distance house start" do
        thursday = DateTime.new(2018,3,29,16,30,00)
        forecast = Forecast.new(thursday)

        assert_equal 6, forecast.lakhana_index
        assert_equal 6, forecast.distance_house_end
        assert_equal "ปัตนิ", forecast.house_end
      end

      it "pass case# 6 at 6:00" do
        saturday = DateTime.new(2018,3,31,6,00,00)
        forecast = Forecast.new(saturday)

        assert_equal 10, forecast.lakhana_index
        assert_equal 6, forecast.distance_house_end
        assert_equal "ปัตนิ", forecast.house_end
      end

      it "pass case# 7 at long distance end" do
        saturday = DateTime.new(2018,3,30,17,55,00)
        forecast = Forecast.new(saturday)

        assert_equal 8, forecast.lakhana_index
        assert_equal 8, forecast.distance_house_end
        assert_equal "ศุภภะ", forecast.house_end
      end

      it "pass case# 8 after midnight and before 6:00 in the morning" do
        # target_date is the night of Wednesday 23/05/2018
        # but the input datetime is actually the present time which is 24/05/2018 at 0:55 in the morning
        
        input_date = Time.new(2018,5,24,0,55,00, "+07:00")
        if (0...6).include?(input_date.hour)
          input_date = input_date.change(day: input_date.day - 1)
        end
        forecast = Forecast.new(input_date)

        assert_equal 10, forecast.lakhana_index
        assert_equal 6, forecast.distance_house_end
        assert_equal "ปัตนิ", forecast.house_end
      end
    end

    describe "timezone" do
      it "can use in different timezone" do
        Time.zone = "America/New_York"
        input_date = Time.zone.at(1528722266) # this date is 2018-06-11 09:04:26 -0400
        
        forecast = Forecast.new(input_date)
        assert_equal [5, 7, 7, 0, 3, 4, 5, 8, 1, 1, 3], forecast.rasi_list_at_this_day
      end
    end

    describe "#question" do
      it "correct question case-1" do
        possible_results =  %w[คุณกำลังคิดจะเดินทางไปไหน? เพื่อนของคุณกำลังมาหาหรือ? คุณคิดถึงเพื่อนของคุณอยู่หรือเปล่า? คุณกำลังคิดถึงเพื่อนสนิทของคุณ? คุณกำลังคิดว่าการเดินทางครั้งนี้จะเป็นอย่างไร?]
        input_date = Time.new(2022,7,17,16,45,30, "+07:00")
        forecast = Forecast.new(input_date)
        assert possible_results.include? forecast.question

        input_date = Time.new(2022,7,17,16,51,42, "+07:00")
        forecast = Forecast.new(input_date)
        assert possible_results.include? forecast.question
      end
    end
  end
end
