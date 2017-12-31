def find_even_index(arr)
    arr.each_index{ |x| puts arr[0..x-1].sum == arr[x+1..arr.length].sum}
  end

  find_even_index([1,2,3,4,3,2,1])