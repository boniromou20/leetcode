// wrong

/**
 * @param {number} x
 * @return {boolean}
 */
var isPalindrome = function(x) {
    let a = x.toString().split('')
    const length = a.length
    if (a.length === 1 ) return true
    
    if (a[0] !== '-') {
	    for(var i =0; i <  Math.trunc(length / 2); i++){
            console.log(a, i)
            if (a.shift() !== a.pop()) {
                return false
            }
        }
        return true
    } else return false
};