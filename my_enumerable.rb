module MyEnumerable
    def all?
        answer = true;
        each {|item| answer = false unless yield(item)}
        answer
        end

    def any?
        answer = false;
        each {|item| answer = true if yield(item)}
        answer
        end

    def filter
        result = []
        each {|item| result.push(item) if yield(item)}
        result
        end
end
