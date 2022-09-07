class Solution {
    public boolean isSubsequence(String s, String t) {
        if (s == null || s.length() ==0 ) return true;
        
        int curr = 0;
        for (char c : t.toCharArray()) {
            if (curr == s.length()) return true;
            if (c == s.charAt(curr)) {
                curr ++;
            }
        }
        return curr == s.length();
    }
}