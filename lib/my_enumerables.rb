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
      yield el
      arr << el if el
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