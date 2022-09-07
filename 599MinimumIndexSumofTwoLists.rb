# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
    a = list1 & list2
    output = []
    min = list1.index(a[0]) + list2.index(a[0])
    a.each_with_index { |mix, i|
        cur = list1.index(mix) + list2.index(mix)
        if (cur == min) 
            output << mix
        elsif (cur < min) 
            output = [mix]
        end
    }
    output
end