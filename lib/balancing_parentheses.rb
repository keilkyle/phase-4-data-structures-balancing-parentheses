require_relative './stack'

def balancing_parentheses(input)

    stack = Stack.new

    input.each_char do |paren|
        if paren == "("
            stack.push(paren)
        else
            if stack.size == 0 || stack.peek() == ")"
                stack.push(paren)
            else
                stack.pop()
            end
        end
    end

    stack.size

end
