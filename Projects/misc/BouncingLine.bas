Meta:
        $noprefix
        option explicit

Constants:
        'const XRES = 640
        'const YRES = 480
        const XRES = 800
        const YRES = 600
        const XMAX = XRES - 1
        const YMAX = YRES - 1


Declares:
        declare function Between%(n as integer, min as integer, max as integer)
        declare function GetRandomOf%(n as integer)
        declare function GetRandomX%()
        declare function GetRandomY%()
        declare function GetRandomMovement%(size as integer)


Variables:
        dim as integer  x1, y1, x2, y2
        dim as integer  mx1, my1, mx2, my2

Begin:
        screen newimage(XRES, YRES, 11)
        fullscreen
        randomize timer

        x1 = GetRandomX
        y1 = GetRandomY
        mx1 = GetRandomMovement(2)
        my1 = GetRandomMovement(2)

        x2 = GetRandomX
        y2 = GetRandomY
        mx2 = GetRandomMovement(2)
        my2 = GetRandomMovement(2)

        do
                line(x1, y1) - (x2, y2), 1
                delay .02
                line(x1, y1) - (x2, y2), 0

                if(x1 <= 0) or(x1 >= XMAX) then mx1 = -mx1
                if(y1 <= 0) or(y1 >= YMAX) then my1 = -my1

                if(x2 <= 0) or(x2 >= XMAX) then mx2 = -mx2
                if(y2 <= 0) or(y2 >= YMAX) then my2 = -my2

                x1 = x1 + mx1
                y1 = y1 + my1

                x2 = x2 + mx2
                y2 = y2 + my2

        loop until inkey$ = chr$(27)
        system
End


function Between%(n as integer, min as integer, max as integer)
        dim as integer min0, max0
        min0 = min
        max0 = max
        if min0 > max0 then swap min0, max0
        Between = (n > min0) and (n < max0)
end function


function GetRandomOf%(n as integer)
        dim as integer n0
        n0 = abs(n)
        GetRandomOf = int(rnd * n0)
end function


function GetRandomX%()
        GetRandomX = GetRandomOf(640)
end function


function GetRandomY%()
        GetRandomY = GetRandomOf(480)
end function


function GetRandomMovement%(size as integer)
        dim as integer size0
        size0 = abs(size)
        GetRandomMovement = (GetRandomOf(size0) * (size0 * 2)) - size0
end function

