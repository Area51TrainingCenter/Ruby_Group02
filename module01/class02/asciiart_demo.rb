require 'asciiart'

class AsciiPrinter
	def print(a)
		File.open("ascii_example.txt", "w") do |file| 
  		a.each do |url|
  			ascii = AsciiArt.new(url)
        value = ascii.to_ascii_art(width: 50)
  			file.write(value)
  		end
		end 
	end
end

printer = AsciiPrinter.new
a = [
"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSuEjOP_qI-QtTNoATq0KJJlkMPyNnW7aCyZyvSSmrEQyHuMqzVTw",
"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ60Vi2Nyq7nbdqJWFiVDKiq5HUKhvaWwgLkMwvdsAGDWOATGr1",
"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRhLQerZED1q_J3askko8xRZHYfkWoKxebqJAt1PkX52hH7ruNn",
"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSuEjOP_qI-QtTNoATq0KJJlkMPyNnW7aCyZyvSSmrEQyHuMqzVTw",
"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ60Vi2Nyq7nbdqJWFiVDKiq5HUKhvaWwgLkMwvdsAGDWOATGr1",
"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRhLQerZED1q_J3askko8xRZHYfkWoKxebqJAt1PkX52hH7ruNn",
"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSuEjOP_qI-QtTNoATq0KJJlkMPyNnW7aCyZyvSSmrEQyHuMqzVTw",
"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ60Vi2Nyq7nbdqJWFiVDKiq5HUKhvaWwgLkMwvdsAGDWOATGr1",
"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRhLQerZED1q_J3askko8xRZHYfkWoKxebqJAt1PkX52hH7ruNn"]
printer.print(a)
