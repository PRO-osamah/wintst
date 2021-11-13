:: This is just a simple script that will keep the ngrok VPS doing something so it wont auto-shutdown, this fixes some of the problems the old script had - ytax
    @echo off
    :check
    ping 127.0.0.1 > nul
    cls
    goto check