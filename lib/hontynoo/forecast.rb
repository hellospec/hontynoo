# frozen_string_literal: true
require "hontynoo/table"
require "hontynoo/questionaire"
require "hontynoo/explain"

module Hontynoo
  class Forecast
    include ::Hontynoo::Table
    include ::Hontynoo::Questionaire
    include ::Hontynoo::Explain

    attr_reader :lakhana_index, :distance_house_end, :begin_period, :house_index, :rasi_list, :datetime, :lang

    def initialize(localtime, lang="th")
      @datetime = localtime
      @lang = lang
      day_index = datetime.wday
      time1 = datetime.strftime("%R") 
      time2 = datetime.strftime("%T")

      period, rasi_list = hontynoo_reference.select { |k,v| k === time1 }.flatten
      @begin_period = period.begin

      rasi_list_at_datetime = rasi_list[day_index]
      @lakhana_index = rasi_list_at_datetime[8]
      lakhana_house_star = get_house_star(@lakhana_index)
      @house_index = rasi_list_at_datetime[lakhana_house_star - 1]
      #puts "\n\nhouse_index: #{@house_index}"

      @distance_house_end = find_distance_house_end
      @rasi_list = rasi_list

      #puts "\n\nforecast_index: #{forecast_index}"
    end

    def forecast_index
      v = @distance_house_end - (12 - @lakhana_index)
      return v > 0 ? v : (12 - v.abs)
    end

    def rasi_list_at_this_day
      @rasi_list[@datetime.wday]
    end

    # Always return array of [astro.zodiac, astro.symbol]
    def rasi
      result = {}
      rasi_symbols = %w(๑ ๒ ๓ ๔ ๕ ๖ ๗ ๘ ล ๙ ๐)
      rasi_list_at_this_day.each_with_index do |r, i| 
        #next if i > 8
        rasi_index = r.to_s
        if result.has_key?(rasi_index)
          result[rasi_index] << rasi_symbols[i]
        else
          result[rasi_index] = Array.[](rasi_symbols[i])
        end
      end

      return result
    end

    def explain
      time_index = @datetime.strftime("%R")
      day_index = @datetime.wday
      explainations.select { |k,v| k === time_index }.values.flatten[day_index]
    end

    def house_end
      house_name[distance_house_end] 
    end

    def find_distance_house_end
      count = find_end_period
      house_of_target_time = house_name.rotate(house_index)[count]
      house_name.rotate(lakhana_index).index(house_of_target_time)
    end

    def find_end_period
      begin_hour, begin_min = @begin_period.split(":")
      target_time = @datetime
      begin_time = target_time.change(hour: begin_hour.to_i, min: begin_min.to_i)

      count = 0
      loop do
        begin_time = begin_time + 7.minutes + 30.seconds
        break if begin_time >= target_time
        count += 1
      end

      return count
    end
  end
end
