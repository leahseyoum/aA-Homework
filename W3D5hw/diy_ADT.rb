class Stack

    def initialize
        @store = []
    end

    def push(el)
        @store << el
        self
    end

    def pop
        @store.pop
    end

    def peek
        @store.last
    end
end

class MyQueue

    def initialize
        @store = []
    end

    def enqueue(el)
        @store.unshift(el)
        self
    end

    def dequeue
        @store.pop
    end

    def peek
        @store.last
    end
end

class Map

    def initialize
        @my_map = []
    end

    def set(key, value)
        @my_map.each do |subarr|
            if subarr[0] == key
                return self
            end
        end
        
        @my_map.push([key, value])
        self
    end

    def get(key)
        @my_map.each do |subarr|
            if subarr[0] == key
                return subarr[1]
            end
        end

        nil
    end

    def delete(key)
        @my_map.each do |subarr|
            if subarr[0] == key
                @my_map.delete(subarr)
            end
        end

        self
    end

    def show
        @my_map.dup
    end

end