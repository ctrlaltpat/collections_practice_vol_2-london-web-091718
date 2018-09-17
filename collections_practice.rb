def begins_with_r(arr)
  arr.all? { |a| a.start_with?("r") }
end

def contain_a(arr)
  arr.select { |a| a.include? "a" }
end

def first_wa(arr)
  arr.each { 
    |a| 
    return a if a.to_s.start_with?("wa")
  }
end

def remove_non_strings(arr)
  arr.delete_if { 
    |a| 
    a != a.to_s 
  }
end

def count_elements(arr)
  rtn_arr =[]
  arr.each do |a|
    rtn_arr << {:count => arr.count(a), {a}}
  end
  arr
end

def merge_data(keys, data)
  rtn_arr = []
  data.each do |a|
    a.each do |k,v|
      rtn_arr << v
    end
  end
  rtn_arr
  # [data, keys]
end

def find_cool(arr)
  arr.select { 
    |a|
    a[:temperature] == "cool"
  }
end

def organize_schools(arr)
  rtn_obj = {}
  arr.each do |a|
    rtn_obj[a[1][:location]] ||= []
    rtn_obj[a[1][:location]] << a[0]
  end
  rtn_obj
end