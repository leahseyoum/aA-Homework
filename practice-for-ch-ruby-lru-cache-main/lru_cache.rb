class LRUCache
    def initialize(n)
        @cache = Array.new
        @size = n
    end

    def count
      @cache.count
    end

    def add(el)
        if @cache.length == @size && @cache.include?(el)
            @cache.delete(el)
            @cache.push(el)
        elsif @cache.length == @size
            @cache.shift
            @cache.push(el)
        else
            @cache.push(el)
        end
    end

    def show
        p @cache
    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

   johnny_cache.add("I walk the line")
  johnny_cache.add(5)

   johnny_cache.count # => returns 2

   johnny_cache.add([1,2,3])
   johnny_cache.add(5)
   johnny_cache.add(-5)
   johnny_cache.add({a: 1, b: 2, c: 3})
   johnny_cache.add([1,2,3,4])
   johnny_cache.add("I walk the line")
   johnny_cache.add(:ring_of_fire)
   johnny_cache.add("I walk the line")
   johnny_cache.add({a: 1, b: 2, c: 3})


  p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]