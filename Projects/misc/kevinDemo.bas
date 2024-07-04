Variables:
        dim Yellow as long
        dim Picture as long
        dim x as integer
        dim y as integer
        dim xBreite as integer
        dim yBreite as integer
        dim z as integer
        dim i as single

Begin:
        'screen _screenimage
        screen _newimage(500, 500, 32)
        '_fullscreen
        'cls

        'Yellow = _rgb(255, 255, 0)

        'print "Hallo, Kevin"
        'print "Huju!"

        x = _width / 2
        y = _height / 2
        z = (x + y) / 4

        Picture = _loadimage("kevinDemoBild.png", 32)
        xBreite = _width(Picture)
        yBreite = _height(Picture)

        _putimage(x - xBreite, y - yBreite)-(x + xBreite, y + yBreite), Picture


        'print x, y, z
        'print Yellow

        'for i = -5 to 5 step 1
        '       circle (x, y), r + i, _rgb(255, 255, 0)
        'next

        'line(x - z, y - z)-(x + z, y + z), Yellow, bf


End

