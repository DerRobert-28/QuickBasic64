Meta:
        $noprefix

Declares:
        declare function TickLength!()
        declare function ofSeconds!(secs as single)
        declare function ofMilliSeconds!(msecs as single)
        declare sub waitTicks(tickCount as single)

Variables:
        dim as integer frequency, waveForm

Begin:
        for waveForm = 1 to 5
                for frequency = 110 to 880
                        sound frequency, ofMilliSeconds(2), , , waveForm
                next
                waitTicks ofSeconds(1)
        next
End

Implements:

        function TickLength!()
                TickLength = 18.2
        end function

        function ofSeconds!(secs as single)
                ofSeconds = secs * TickLength!
        end function

        function ofMilliSeconds!(msecs as single)
                ofMilliSeconds = ofSeconds!(msecs / 1000)
        end function

        sub waitTicks(tickCount as single)
                delay tickCount / TickLength
        end sub

