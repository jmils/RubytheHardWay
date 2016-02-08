#Creates two arguments
from_file, to_file = ARGV

#puts "Copying from #{from_file} to #{to_file}"

#we could do these two on one line, how?
#Creates a variable in_file that opens the first file.
in_file = open(from_file)
#Creates a second variable that reads in_file (the first argument)
indata = in_file.read

#puts "The input file is #{indata.length} bytes long"

#puts "Does the output file exist? #{File.exist?(to_file)}"
#puts "Ready, hit RETURN to continue, CTRL-C to abort."
#$stdin.gets

#Creates a variable that opens a new file to_file in write mode.
out_file = open(to_file, 'w')
#Writes into the new file the data read from the other file.
out_file.write(indata)

#puts "Alright, all done."

#closes both files.
out_file.close
in_file.close
