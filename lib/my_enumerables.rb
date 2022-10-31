module Enumerable
  def my_each_with_index
    idx = 0
    for el in self do
      yield el, idx
      idx += 1
    end
    self
  end

  def my_select
    arr = []
    for el in self do
      arr << el if yield el
    end
    arr
  end

  def my_all?
    arr = []
    count = 0
    for el in self do
        arr << el if yield el
        count += 1
    end
    arr.size == count ? true : false
  end

  def my_any?
    arr= []
    for el in self do
      arr << el if yield el
    end
    arr.size > 0 ? true : false
  end

  def my_none?
    arr=[]
    for el in self do
      arr << el if yield el
    end
    arr.size == 0 ? true : false
  end

  def my_count
    return size if !block_given?
    arr = []
    for el in self do
      arr << el if yield el
    end
    arr.size
  end

  def my_map
    arr = []
    for el in self do
      arr << (yield el)
    end
    arr
  end
end

class Array
  def my_each
    for el in self do #esto se lo pasas a arr
      yield el #yield aqui actua el bloque REPASAR
    end
  end
  self #se retorna a si mismo igual que el each, devuelve la misma
end