def nota_mas_alta(arr)
    notas = arr[1..-1].map{ |ele| ele.to_i }
    return notas.max
end