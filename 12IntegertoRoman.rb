# @param {Integer} num
# @return {String}
def int_to_roman(num)
    roman = []
    roman_mapping = {
        1 =>"I",
        4 => "IV",
        5 => "V",
        9 => "IX",
        10 => "X",
        40 => "XL",
        50 => "L",
        90 => "XC",
        100 => "C",
        400 => "CD",
        500 => "D",
        900 => "CM",
        1000 => "M"
    }
    
    
    
    roman_mapping.keys.sort.reverse.each do |digit|
        while (num/digit) >= 1 do
            roman << roman_mapping[digit]
            num -= digit
        end
        next
    end
    
    roman.join
end