module Enumerable
  def my_each(&block)
    each(&block)
    self
  end

  def my_each_with_index
    idx = 0
    each do |el|
      yield el, idx
      idx += 1
    end
    self
  end

  def my_select
    arr = []
    each do |el|
      arr << el if yield el
    end
    arr
  end

  def my_all?
    arr = []
    count = 0
    each do |el|
      arr << el if yield el
      count += 1
    end
    arr.size == count
  end

  def my_any?
    arr = []
    each do |el|
      arr << el if yield el
    end
    arr.size.positive? ? true : false
  end

  def my_none?
    arr = []
    each do |el|
      arr << el if yield el
    end
    arr.size.zero? ? true : false
  end

  def my_count
    return size unless block_given?

    arr = []
    each do |el|
      arr << el if yield el
    end
    arr.size
  end

  def my_map
    arr = []
    each do |el|
      arr << (yield el)
    end
    arr
  end

  def my_inject(initial)
    arr = [initial]
    each do |el|
      arr << (yield arr.last, el)
    end
    arr.last
  end
end