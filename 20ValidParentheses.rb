/**
 * @param {string} s
 * @return {boolean}
 */
var isValid = function(s) {
    let mapping = { "(" : ")", "[" : "]", "{" : "}" }
    if (s.length%2) return false
    
    s = s.split('')
    let length = s.length
    let array = []
    for(var i = 0; i < length; i++) {
        if (mapping[s[i]]) {
            array.push(mapping[s[i]])
        } else {
            if (array.pop() !== s[i]) return false
        }
    }
    return array.length ? false : true
};