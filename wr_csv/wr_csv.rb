def read_file file_name
  file = File.open file_name, 'r'
  data = file.read
  file.close
  data
end
data = read_file 'read.csv'
array = data.split("\n")
hashs = array.map{ |e| e.split(',').map(&:strip) }.to_h #.map{|e| {"#{e[0]}".strip => e[1].strip}}
p hashs
