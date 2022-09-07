/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
   let data = {}
   if (nums.length ===2) {
       return [0,1]
   }
    for (let i = 0; i < nums.length; i++) {
    	const a = {}
        a[nums[i]] = i
        Object.assign(data, a)
    }
    
    for (let j = 0; j < nums.length; j++) {
        value = target - nums[j]
        if (data[value] && j !== data[value]) {
        	return [j, data[value]]
        }
 	}
};

# Better way
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    mapping = {}
    nums.each_with_index{ |num, i | mapping[num] = i}
    nums.each_with_index { |num, i|
        a = target - num
        return [i, mapping[a]] if mapping[a] && i != mapping[a]
    }
end