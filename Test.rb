print "Enter name of log file: "
log_file = gets.to_i

if (log_file.to_s.eql?("0"))
	log_file = "test.log"	
end

begin
	File.open(log_file) do |record|
		record.each do |item|
			time, text = item.chomp.split(',')

			puts "#{text}"
		end
	end
rescue
	puts "Error. Could not open log file: #{log_file}"
end
