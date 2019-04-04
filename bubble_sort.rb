=begin
From listening to Bubble sort Algorithm video on youtube 
https://www.youtube.com/watch?v=8Kp-8OGwphY

and reading about it on wikipedia
http://en.wikipedia.org/wiki/Bubble_sort


PSEUDO CODE

procedure bubbleSort( A : list of sortable items )
    n = length(A)
    repeat
        swapped = false
        for i = 1 to n-1 inclusive do
            if A[i] > A[i+1] then
                swap(A[i], A[i+1])
                swapped = true
            end if
        end for
        n = n - 1
    until not swapped
end procedure
=end

##========== USING FOR LOOP =======================================
def bubbleSort(arr)
    n = arr.length
    p "yo" if block_given? 
    while (n > 1) do
        for i in 0...n-1 
            if arr[i] > arr[i+1]
                arr[i+1], arr[i] = arr[i], arr[i+1]
            end 
        end 
        n = n-1
    end
    p arr
    return arr
end

##========== USING ENUMERABLE =======================================
def bubbleSort2(arr)
    n = arr.length
    while (n > 1) do
        (n-1).times do |i|
            if arr[i] > arr[i+1]
                arr[i+1], arr[i] = arr[i], arr[i+1]
            end 
        end 
        n = n-1
    end
    return arr
end



#bubbleSort2([4,6,1,8,2,90,7]) #testing sample
bubbleSort([6,1,8,2,90])


=begin

same algorithm using Yield

Good BLOCKS tutorial => https://www.youtube.com/watch?v=K8uhD8mtorE

 > bubble_sort_by(["hi","hello","hey"]) do |left,right|
  >   left.length - right.length
  > end
  => ["hi", "hey", "hello"]
=end

##========== USING YIELD =======================================
def bubble_sort_by(arr)

    n = arr.length
    
    while (n > 1) do
        for i in 0...n-1
            if block_given?
                var = yield arr[i], arr[i+1]
                if var > 0
                arr[i+1], arr[i] = arr[i], arr[i+1]
                end
            else
                "no block"
            end
        end
        n = n-1
    end
    return arr
end

result = bubble_sort_by(['shey','louis','chis'])  do |left,right|
    #puts "#{left.length},#{right.length}"
    left.length - right.length

end

#bubble_sort_by(['shey','louis','chis'])