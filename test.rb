

module Test
  def my_inject
    arr = []
    inic = 1
    for el in self do
      arr << (yield inic, el)
    end
    arr
  end
end

include Test

arr = [2, 3, 4, 5]

p arr.my_inject{|acc, n| acc * n}
