CC = cl

CFLAGS = /O2 /std:c++17 /EHsc

SRCS = MakeMogg.cpp aes.c VorbisEncrypter.cpp OggMap.cpp oggvorbis.cpp CCallbacks.cpp

makemogg.exe: $(SRCS)
	$(CC) /Fe: makemogg $(SRCS) $(CFLAGS)

clean:
	del makemogg.exe
	del *.obj