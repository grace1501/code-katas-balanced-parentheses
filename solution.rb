class Solution
    def self.check(str)
        letters = str.split("")
        pairs = {
            "(" => ")",
            "[" => "]",
            "{" => "}"
        }

        tracking = []

        letters.each do |letter|            
            if pairs.key?(letter)
                tracking.push(letter)
            else
                left_side = tracking.pop()

                if pairs[left_side] != letter
                    return false
                end
            end
        end

        return tracking.empty?
    end
end

puts Solution.check("()[]{}")
puts Solution.check("(]")
