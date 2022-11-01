

module Test
  def my_inject
    arr = []
    for el in self do
      arr << (yield el)
    end
    arr.sum
  end
end

include Test

arr = [2, 3, 4, 5]

p arr.my_inject{|acc, n| acc + n}
