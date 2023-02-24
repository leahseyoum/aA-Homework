def sluggish_octopus(arr)
    
    arr.each_with_index do |fish1, i|
        max_length = true
        arr.each_with_index do |fish2, j|
            if j > i && fish2.length > fish1.length
                max_length = false
                
            end
        end
    end

    return fish1 if max_length
end

def dominant_octopus(arr)
    return [arr] if arr.length == 1
    mid_idx = arr.length / 2
    pivot = arr[mid]
    left = arr.take(mid)
    right = arr.drop(mid + 1)

    dominant_octopus(left) + [pivot] + dominant_octopus(right)
end

def clever_octopus(arr)
    longest = ''

    arr.each do |fish|
        if ele.length > longes.length
            longest.length = ele
        end
    end

    return longest
end

def dancing_octopus(arr)
    
end