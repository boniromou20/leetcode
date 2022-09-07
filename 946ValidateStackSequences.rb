# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
    stack = []
    for x in pushed
        stack << x
        while stack.last && stack.last == popped.first
            stack.pop
            popped.shift
        end
    end
    popped.empty?
end