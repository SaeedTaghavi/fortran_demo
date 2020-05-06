program subString
        implicit none
        character(len = 2)::hi
        character(len=21)::message
        integer ::i
        hi = "Hi"
        message="You are with STV! :)"

        do i=1,2
                write(*,fmt="(a)",advance="no") hi(i:i)
                ! call system( "cvlc --play-and-exit --no-loop 03.mp3" )
                call wait(.2) ! wait in seconds
        end do
        write(*,*)
        call wait(.2) 

        do i=1,21
                write(*,fmt="(a)",advance="no") message(i:i)
                ! call sleep(1) ! sleep gets only integer value and waits for detemind seconds
                call wait(.2) !wait gets real value and wait in seconds
        end do
   
end program subString

subroutine wait(t)
        real :: t
        real :: start, finish
        call cpu_time(start)
        do while(finish-start<t)
            call cpu_time(finish)
        end do
        ! print '("Time = ",f6.3," seconds.")',finish-start
end subroutine wait
