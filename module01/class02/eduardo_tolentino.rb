require 'asciiart'

class Imagenes

  def initialize(array)
    @array = array  
  end

  def my_img
    File.open("ascii.txt","w") do
      @array.each do |x|
          ascii = AsciiArt.new(x)
          value = ascii.to_ascii_art(width:50)
          archivo.puts(value)
      end
    end
  end

end



array = Array.new
array.push("http://aboveandbeyondkm.com/wp-content/uploads/2013/11/Angry-Birds-HD-Wallpaper.png")
array.push("https://www.angrybirds.com/AcuCustom/Sitename/DAM/008/ABE_rembrandt_1024x4001.jpg")
array.push("http://aboveandbeyondkm.com/wp-content/uploads/2013/11/Angry-Birds-HD-Wallpaper.png")
array.push("http://aboveandbeyondkm.com/wp-content/uploads/2013/11/Angry-Birds-HD-Wallpaper.png")
array.push("http://aboveandbeyondkm.com/wp-content/uploads/2013/11/Angry-Birds-HD-Wallpaper.png")
array.push("http://aboveandbeyondkm.com/wp-content/uploads/2013/11/Angry-Birds-HD-Wallpaper.png")
array.push("http://aboveandbeyondkm.com/wp-content/uploads/2013/11/Angry-Birds-HD-Wallpaper.png")
array.push("http://aboveandbeyondkm.com/wp-content/uploads/2013/11/Angry-Birds-HD-Wallpaper.png")
array.push("http://aboveandbeyondkm.com/wp-content/uploads/2013/11/Angry-Birds-HD-Wallpaper.png")
array.push("http://aboveandbeyondkm.com/wp-content/uploads/2013/11/Angry-Birds-HD-Wallpaper.png")
a = Imagenes.new(array)
a.my_img