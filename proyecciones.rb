file = File.open("ventas_base.db")

file_data = file.read.split(",").map{ |ele| ele.to_f }

file.close

def primera_mitad_10(arr_num)
    result = []
    arr_num.length.times do |i|
        if i.between?(0, 2) || i.between?(6, 8)
            result.push(arr_num[i] * 1.1)
        else
            result.push(arr_num[i])
        end
    end
    return result.inject{ |sum, ele| sum + ele.round(2) }
end

def segunda_mitad_20(arr_num)
    result = []
    arr_num.length.times do |i|
        if i.between?(3, 5) || i.between?(9, 11)
            result.push(arr_num[i] * 1.2)
        else
            result.push(arr_num[i])
        end
    end
    return result.inject{ |sum, ele| sum + ele.round(2) }
end

simulacion1 = primera_mitad_10(file_data)
simulacion2 = segunda_mitad_20(file_data)

File.write("resultados.data", "#{simulacion1}\n#{simulacion2}")

