arr = [1, 2, 3]

module Enumerable
  def my_each
    #to_enum(:my_each) unless block_given? #devuelve el objeto igual que enum si no hay bloque 

    for el in self do #esto se lo pasas a arr
      yield el #yield aqui actua el bloque REPASAR
    end
  end
  self #se retorna a si mismo igual que el each, devuelve la misma
end


arr.my_each{|el| puts el * 2}
