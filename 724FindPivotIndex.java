class Solution {
    public int pivotIndex(int[] nums) {
        int left_sum = 0;
        int total = 0;
        for (int j =0; j< nums.length; j++) {
            total += nums[j];
        }
        
        for (int i = 0; i < nums.length; i++) {
            int right_sum = total;
            right_sum -= left_sum;
            right_sum -= nums[i];
            if (left_sum == right_sum) {
                return i;
            }
            left_sum += nums[i];
        }
        return -1;
    }
}