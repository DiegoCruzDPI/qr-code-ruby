require "rqrcode"
#what do lines of code like this represent? Exactly what is happening?
# stores the conternt withing the QR code
qrcode = RQRCode::QRCode.new("http://www.justanothercruz.com/")
#creates a png of QR Code

# qrcode = RQRCode::QRCode.new("http://www.justanothercruz.com/")


png = qrcode.as_png({:size => 500})
#goes to file tree and makes .png file for use
IO.binwrite("something.png", png.to_s)
