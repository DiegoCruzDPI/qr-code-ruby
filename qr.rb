require "rqrcode"
#what do lines of code like this represent? Exactly what is happening?

# webiste QR code
# qrcode = RQRCode::QRCode.new("http://www.justanothercruz.com/")

#WiFi QR code
 qrcode = RQRCode::QRCode.new("WIFI:T:WPA2;S:Cruz;P:password;;")

 # creates a png file for the code
png = qrcode.as_png({:size => 500})
#goes to file tree and makes .png file for use
IO.binwrite("something.png", png.to_s)
