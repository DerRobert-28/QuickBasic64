options:
        $noprefix

constants:
        const zero = "00000000"

variables:
        dim as integer  i, j
        dim as single   f
        dim as string   s

begin:
        f = 1.5
        s = mks$(f)
        print f
        for i = 1 to 4
                j = asc(s, i)
                print i, j, right$(zero + bin$(j), 8)
        next
end

