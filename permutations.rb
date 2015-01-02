#recursion 
def perm arr, i=0
  p arr if i == arr.size
  (i..arr.size-1).each do |j|
    # p 'i'+ arr[i], 'j'+arr[j]
    arr[i], arr[j] = arr[j], arr[i]
    perm arr, i+1
    # p i
    arr[i], arr[j] = arr[j], arr[i]
  end
end

perm 'AB'

=begin | will print:  
#-------------------------
"ABC"
"ACB"
"BAC"
"BCA"
"CBA"
"CAB"
#-------------------------  
=end

