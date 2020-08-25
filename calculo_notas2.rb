def nota_mas_alta(arr)
    result = []
    arr.each do |ele|
        notas = ele.split(",").map{ |nota| nota.to_i }
        result.push(notas.max)
    end
    return result
end