module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    for el in self do #esto se lo pasas a arr
      yield el #yield aqui actua el bloque REPASAR
    end
  end
  self #se retorna a si mismo igual que el each, devuelve la misma
end

#FUNCIONA SOLO CON ESTO, EL TIPEJO LO QUE HACE ES TIRARSE EL ROLLO PARA QUE
#DEVUELVA EL ENUMERATOR EN CASO DE QUE NO TENGA BLOQUE