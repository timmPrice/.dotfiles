function masm
    echo assembling
    WINEPREFIX=~/wine-masm/drive_c/masm32/bin/ml.exe /nologo /c /coff /Zi $args
    echo linking
    WINEPREFIX=~/wine-masm/drive_c/masm32/bin/link.exe $args
    wine ../bin/link.exe ../bin/hello.obj /SUBSYSTEM:CONSOLE kernel32.lib user32.lib
    # this is a pain in the ass
end
