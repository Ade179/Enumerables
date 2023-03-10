module MyEnumerables
def all?(&block)
each do |element|
    return false if block.call(element) == false
end
true
end

def any?(&block)
each do |element|
    return true if block.call(element) == true
end
false
end

def filter?(&block)
output_array=[]
each do |element|
    output_array << element if block.call(element) == true
end
output_array
end
end