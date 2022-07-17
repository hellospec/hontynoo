# frozen_string_literal: true

module Hontynoo
  module Table
    # House star is the fixed position in hora chart. It sometime refer to "doung kaset"
    # refer to https://sites.google.com/site/buddhistastro/matrthan-daw-phra-kheraah/dwngdawkestr
    def get_house_star(rasi_index)
      { 
        "0": 3, "1": 6, "2": 4, "3": 2, "4": 1, "5": 4,
        "6": 6, "7": 3, "8": 5, "9": 7, "10": 8, "11": 5
      }.fetch(rasi_index.to_s.to_sym)
    end

    def house_name
      ["ตนุ", "กดุมภะ", "สหัสชะ", "พันธุ", "ปุตตะ", "อริ", "ปัตนิ", "มรณะ", "ศุภภะ", "กัมมะ", "ลาภะ", "วินาศ"]
    end

    # This method return the data as per following format
    # (period_range) => [
    #    sun[ rasi_num, ... ],
    #    mon[ rasi_num, ... ],
    #    tue[ rasi_num, ... ],
    #    wed[ rasi_num, ... ],
    #    thu[ rasi_num, ... ],
    #    fri[ rasi_num, ... ],
    #    sat[ rasi_num, ... ]
    # ]
    #
    # The index of array will represent star name as following...
    # [อาทิตย์, จันทร์, อังคาร, พุธ, พฤหัส, ศุกร์, เสาร์, ลัคนา, เกตุ, มฤตยู]
    def hontynoo_reference
      { ("06:00"..."07:30") => [
          [1, 6, 9, 10, 4, 8, 10, 10, 10, 0, 4],
          [2, 8, 0, 2, 2, 7, 10, 11, 0, 3, 8],
          [3, 3, 8, 11, 0, 6, 10, 0, 2, 6, 0],
          [4, 5, 11, 3, 5, 5, 10, 1, 4, 9, 9],
          [5, 7, 7, 0, 3, 4, 10, 2, 6, 0, 1],
          [6, 9, 10, 4, 8, 10, 10, 3, 8, 8, 10],
          [7, 11, 1, 1, 6, 9, 10, 4, 10, 11, 2]
        ], ("07:30"..."09:00") => [
          [6, 9, 10, 4, 8, 10, 10, 10, 0, 4, 10],
          [7, 11, 1, 1, 6, 9, 10, 11, 2, 7, 7],
          [1, 6, 9, 10, 4, 8, 10, 0, 4, 10, 11],
          [2, 8, 0, 2, 2, 7, 10, 1, 6, 6, 8],
          [3, 3, 8, 11, 0, 6, 10, 2, 8, 9, 0],
          [4, 5, 11, 3, 5, 5, 10, 3, 3, 5, 9],
          [5, 7, 7, 0, 3, 4, 10, 4, 5, 8, 1]

        ], ("09:00"..."10:30") => [
          [4, 5, 11, 3, 5, 5, 5, 7, 11, 5, 6],
          [5, 7, 7, 0, 3, 4, 5, 8, 1, 1, 3],
          [6, 9, 10, 4, 8, 10, 0, 4, 10, 11, 2],
          [7, 11, 1, 1, 6, 9, 0, 5, 5, 7, 11],
          [1, 6, 9, 10, 4, 8, 0, 6, 7, 10, 3],
          [2, 8, 0, 2, 2, 7, 0, 0, 2, 6, 0],
          [3, 3, 8, 11, 0, 6, 0, 1, 4, 9, 9]
        ], ("10:30"..."12:00") => [
          [2, 8, 0, 2, 2, 2, 4, 8, 2, 3, 6 ],
          [3, 3, 8, 11, 0, 1, 4, 9, 9, 11, 3],
          [4, 5, 11, 3, 5, 7, 11, 5, 6, 9, 2],
          [5, 7, 7, 0, 3, 6, 11, 11, 1, 5, 11],
          [6, 9, 10, 4, 8, 0, 6, 7, 10, 3, 3],
          [7, 11, 1, 1, 6, 11, 11, 1, 5, 11, 0],
          [1, 6, 9, 10, 4, 10, 11, 2, 7, 7, 9]
        ], ("12:00"..."13:30") => [
          [7, 11, 1, 1, 1, 3, 7, 1, 2, 5, 10],
          [1, 6, 9, 10, 11, 2, 7, 7, 9, 1, 7],
          [2, 8, 0, 2, 4, 8, 2, 3, 6, 11, 11],
          [3, 3, 8, 11, 2, 7, 7, 9, 1, 7, 8],
          [4, 5, 11, 3, 7, 1, 7, 5, 10, 10, 0],
          [5, 7, 7, 0, 5, 5, 7, 11, 5, 6, 9],
          [6, 9, 10, 4, 10, 11, 2, 7, 7, 9, 1]
        ], ("13:30"..."15:00") => [
          [6, 7, 7, 7, 9, 1, 7, 8, 11, 4, 4 ],
          [6, 9, 10, 11, 2, 7, 7, 9, 1, 7, 8],
          [7, 11, 1, 3, 7, 1, 2, 5, 10, 10, 0],
          [1, 6, 9, 0, 5, 5, 7, 11, 5, 6, 9],
          [2, 8, 0, 4, 10, 11, 2, 7, 7, 9, 1],
          [3, 3, 8, 1, 1, 3, 7, 1, 2, 5, 10],
          [4, 5, 11, 5, 6, 9, 2, 2, 4, 8, 2]
        ], ("15:00"..."16:30") => [
          [3, 3, 3, 5, 9, 3, 4, 7, 0, 0, 0],
          [4, 5, 6, 9, 2, 2, 4, 8, 2, 3, 4],
          [5, 7, 9, 1, 7, 8, 11, 4, 4, 6, 8],
          [6, 9, 0, 5, 5, 7, 11, 5, 6, 9, 0],
          [7, 11, 3, 9, 10, 1, 6, 6, 8, 0, 4],
          [1, 6, 11, 11, 1, 5, 11, 0, 3, 8, 1],
          [2, 8, 2, 3, 6, 11, 11, 1, 5, 11, 5]
        ], ("16:30"..."18:00") => [
          [1, 1, 3, 7, 1, 2, 5, 10, 10, 10, 3],
          [2, 3, 6, 11, 11, 1, 5, 11, 0, 1, 7],
          [3, 5, 9, 3, 4, 7, 0, 0, 2, 4, 4],
          [4, 7, 0, 0, 2, 6, 0, 1, 4, 7, 8],
          [5, 9, 3, 4, 7, 0, 0, 2, 6, 10, 0],
          [6, 11, 11, 1, 5, 11, 0, 3, 8, 1, 4],
          [7, 1, 2, 5, 10, 10, 0, 4, 10, 4, 8]
        ], ("18:00"..."19:30") => [
          [1, 5, 6, 11, 1, 7, 10, 10, 10, 1, 7],
          [2, 7, 9, 3, 6, 6, 10, 11, 0, 4, 4],
          [3, 9, 0, 0, 4, 5, 10, 0, 2, 7, 8],
          [4, 4, 8, 9, 2, 4, 10, 1, 4, 10, 0],
          [5, 6, 11, 1, 7, 10, 10, 2, 6, 6, 9],
          [6, 8, 2, 5, 5, 9, 10, 3, 8, 9, 1],
          [7, 10, 10, 2, 3, 8, 10, 4, 10, 0, 5]
        ], ("19:30"..."21:00") => [
          [5, 6, 11, 1, 7, 10, 10, 10, 1, 7, 9 ],
          [6, 8, 2, 5, 5, 9, 10, 11, 3, 3, 6],
          [7, 10, 10, 2, 3, 8, 10, 0, 5, 6, 10],
          [1, 5, 6, 11, 1, 7, 10, 1, 7, 9, 2],
          [2, 7, 9, 3, 6, 6, 10, 2, 2, 5, 11],
          [3, 9, 0, 0, 4, 5, 10, 3, 4, 8, 8],
          [4, 4, 8, 9, 2, 4, 10, 4, 6, 11, 0]
        ], ("21:00"..."22:30") => [
          [2, 7, 9, 3, 6, 6, 6, 9, 3, 5, 10],
          [3, 9, 0, 0, 4, 5, 6, 10, 10, 1, 7],
          [4, 4, 8, 9, 2, 4, 6, 11, 0, 4, 4],
          [5, 6, 11, 1, 7, 10, 1, 7, 9, 2, 3],
          [6, 8, 2, 5, 5, 9, 1, 1, 4, 10, 0],
          [7, 10, 10, 2, 3, 8, 1, 2, 6, 6, 9],
          [1, 5, 6, 11, 1, 7, 1, 3, 8, 9, 1]
        ], ("22:30"..."24:00") => [
          [6, 8, 2, 5, 5, 5, 8, 2, 4, 9, 10],
          [7, 10, 10, 2, 3, 4, 8, 8, 11, 5, 7],
          [1, 5, 6, 11, 1, 3, 8, 9, 1, 1, 4],
          [2, 7, 9, 3, 6, 9, 3, 5, 10, 11, 3],
          [3, 9, 0, 0, 4, 8, 8, 11, 5, 7, 0],
          [4, 4, 8, 9, 2, 7, 8, 0, 0, 3, 9],
          [5, 6, 11, 1, 7, 1, 3, 8, 9, 1, 1]
        ], ("00:00"..."01:30") => [
          [3, 9, 0, 0, 0, 3, 9, 11, 4, 5, 9],
          [4, 4, 8, 9, 10, 2, 2, 5, 11, 1, 6],
          [5, 6, 11, 1, 3, 8, 9, 1, 1, 4, 10],
          [6, 8, 2, 5, 8, 2, 4, 9, 10, 2, 2],
          [7, 10, 10, 2, 6, 6, 9, 3, 5, 10, 11],
          [1, 5, 6, 11, 4, 5, 9, 9, 0, 6, 8],
          [2, 7, 9, 3, 9, 11, 4, 5, 9, 9, 0]
        ], ("01:30"..."03:00") => [
          [7, 10, 10, 10, 1, 7, 9, 2, 3, 7, 7],
          [1, 5, 6, 7, 11, 11, 2, 8, 10, 3, 4],
          [2, 7, 9, 11, 4, 5, 9, 9, 0, 6, 8],
          [3, 9, 0, 3, 9, 11, 4, 5, 9, 9, 0],
          [4, 4, 8, 0, 0, 3, 9, 11, 4, 5, 9],
          [5, 6, 11, 4, 5, 9, 9, 0, 6, 8, 1],
          [6, 8, 2, 8, 10, 3, 4, 8, 8, 11, 5]
        ], ("03:00"..."04:30") => [
          [4, 4, 4, 7, 1, 2, 8, 9, 1, 1, 1],
          [5, 6, 7, 11, 11, 2, 8, 10, 3, 4, 5],
          [6, 8, 10, 3, 4, 8, 8, 11, 5, 7, 9],
          [7, 10, 1, 7, 9, 2, 3, 7, 7, 10, 1],
          [1, 5, 9, 9, 0, 6, 8, 1, 2, 6, 10],
          [2, 7, 0, 1, 5, 5, 8, 2, 4, 9, 2],
          [3, 9, 3, 5, 10, 11, 3, 3, 6, 0, 6]
        ], ("04:30"..."06:00") => [
          [1, 1, 4, 10, 0, 5, 6, 10, 10, 10, 2],
          [2, 3, 7, 7, 10, 4, 6, 11, 0, 1, 6],
          [3, 5, 10, 11, 3, 3, 6, 0, 2, 4, 10],
          [4, 7, 1, 3, 8, 9, 1, 1, 4, 7, 7],
          [5, 9, 9, 0, 6, 8, 1, 2, 6, 10, 11],
          [6, 11, 0, 4, 4, 7, 1, 3, 8, 1, 3],
          [7, 1, 3, 8, 9, 1, 1, 4, 10, 4, 7]
        ]
      }
    end
  end
end