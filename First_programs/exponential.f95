        program exponential
!      This program adds terms of the Taylor series for exp(x).
!       The user inputs the x value and the desired number of terms.
        real x, sum, term
        integer i, n
        character ans*1

 5      print *, "For what x-value do you want to sum the series?"
        read *, x
        print *, "At what n do you want to stop the sum?"
        read *, n

        sum = 1
        term = 1
        do i = 1, n
                term = term * x / i
                sum = sum + term
        end do

        print *, "The Taylor approximation of order", n
        print *, "of exp x at x =", x, " is", sum
        print *, "The actual value of exp", x, " is", exp(x)

        print *, "Do you want to repeat (y or n) ?"
        read *, ans
        if (ans .eq. "y" .or. ans .eq. "Y") goto 5
        print *, "Sayonara"
        end
