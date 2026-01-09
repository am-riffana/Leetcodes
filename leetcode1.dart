class Solution {
  int strStr(String haystack, String needle) {
    if (needle.isEmpty) return 0;

    int nl = needle.length;
    int hLen = haystack.length;

    for (int i = 0; i <= hLen - nl; i++) {
      int j = 0;

      for (; j < nl; j++) {
        if (haystack[i + j] != needle[j]) {
          break;
        }
      }

      if (j == nl) {
        return i;
      }
    }

    return -1;
  }
}

void main() {
  Solution s = Solution();
  print(s.strStr("hello", "ll")); // Output: 2
  print(s.strStr("aaaaa", "bba")); // Output: -1
}
