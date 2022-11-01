module Test
  def my_inject(inic)
    arr = [inic]
    for el in self do
      arr << (yield arr.last, el)
    end
    arr.last
  end
end

include Test

arr = [2, 3, 4, 5]

p arr.my_inject(4){|acc, n| acc * n}

p arr.inject(4){|acc, n| acc * n}