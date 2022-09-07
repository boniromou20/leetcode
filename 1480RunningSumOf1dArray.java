class Solution {
    public int[] runningSum(int[] nums) {
        int[] running_sum = new int[nums.length];
        int curr_sum = 0 ;
        for(int i=0; i < nums.length; i++) {
            curr_sum += nums[i];
            running_sum[i] = curr_sum;
        }
        return running_sum;
    }
}