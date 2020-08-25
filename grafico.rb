def chart(arr)
    max_num = arr.max

    limit = max_num % 10 > 0 ? (max_num + 5).round(-1) : max_num.round(-1)

    arr.each do |ele|
        puts "|" + "**" * ele 
    end
    
    puts ">" + "--" * limit
    
    last_line = ""
    # Arreglo para poder integrar números más altos en la barra inferior conservando la estética y proporciones del gráfico inicial
    for i in 1..limit do
        i <= 10 ? (last_line += " #{i}") : (last_line += "  #{i}" if i % 2 == 0)
    end

    puts last_line
end