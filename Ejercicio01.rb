def crea_index(prf1, prf2)
  f = File.new('index.html', 'w')
  f.write "<p>#{prf1}</p>"
  f.write "<p>#{prf2}</p>"
  f.close
  nil
end

def actualiza_index(prf1, prf2, arr)
  f = File.open('index.html', 'a')
  f.write "<p>#{prf1}</p>\n"
  f.write "<p>#{prf2}</p>\n"
  unless arr.empty?
    f.write '</ol>'
    arr.sort.map { |e| f.write "<li>#{e}</il>\n" }
    f.write '</ol>'
  end
  f.close
  nil
end

def color_fondo(color)
  f = File.read('index.html')
  fg = f.gsub('<p>', "<p style='background-color:#{color};' >")
  File.write('index.html', fg)
  nil
end

  crea_index 'mi primer parrafo', 'mi segundo parrafo'

  arreglo = []
  actualiza_index 'mi parrafo b.1', 'mi parrafo c.1', arreglo

  arreglo = [2, 5, 8, 4, 1, 3]
  actualiza_index 'mi parrafo b.2', 'mi parrafo c.2', arreglo
