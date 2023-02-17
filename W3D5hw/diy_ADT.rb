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
        @store.shift
    end

    def peek
        @store.last
    end
end
