class CharCounter

	def self.count(word)
        if word.eql? nil
            {}
        else
            word = word.delete " "
            total = Hash.new(0)

            word.each_char do |char|
                total[char] = total[char] + 1
            end
            total.default = nil
            total
        end
    end
end