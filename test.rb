arr = [1, 2, 3]

module Enumerable
  def my_select
    arr = []
    for el in self do
      arr << el if yield el
    end
    arr
  end
end


p arr.my_select{|x| x >= 2}
