# read a csv file, and transform to hash
def read_file file_name
  file = File.open file_name, 'r'
  data = file.read
  file.close
  data
end
data = read_file 'read.csv'
array = data.split("\n")
hash = array.map{ |e| e.split(',').map(&:strip) }.to_h
