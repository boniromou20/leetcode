/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {
    const r2i = {
        I:1, V:5, X:10, L:50, C:100, D:500, M:1000
    }
    let result = 0
    for(let i = 0; i < s.length; i++) {
        let pre = r2i[s[i]]
        let aft = r2i[s[i+1]]
        
        if(pre < aft){
            result -= pre
            result += aft
            i++
        } else {
            result += pre
        }
    }
    return result
};