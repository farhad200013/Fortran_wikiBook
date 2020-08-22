!       This program will not compile. The one-line "if" statement
!       is not supposed to contain "then". To fix it, delete "then".
        program positive
        real x
        print *, "What is your number ?"
        read *, x
        if (x .gt. 0) then print *, "Your number is positive."
        print *, "Bye"
        end
