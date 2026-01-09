class Solution {
  List<int> twoSum(List<int> nums, int target) {
  Map<int, int> map = {}; 

  for (int i = 0; i < nums.length; i++) {
    int difference = target - nums[i];

    if (map.containsKey(difference)) {
      return [map[difference]!, i];
    }

    map[nums[i]] = i;
  }

  return [];
}

    }
    
void main() {
  Solution s = Solution();
  print(s.twoSum([2, 7, 11, 15], 9)); 
}