
# shaped-pwgen

Generate a shaped bunch of passwords

# Starting

## Pre-requisite

- a working ```bash(1)```
- ```bc(1)```
- ```openssl(1)```
- eventually ```haveged(8)```

## Installation

Copy ```pwgen``` somewhere accessible by your ```$PATH```

# Running

It's as simple as
```
$ ./pwgen
  0.0   0 |
142.9  24 |                      B0qn6LTwUSslyz1HupLxebLn
190.5  32 |                  ISn0uS8C6NZpM4lfygsKw2cAlfgDjToA
226.3  38 |               TPQcQ1OJXvWVQEYX3EM8FQrKFdg4auzTI63qz2
250.1  42 |             ZXr03IP1nKhQPTjJbxRFeJ6xPUTypF84Ds1IEBdtWw
279.8  47 |          GFwsGuyfJmeWLR5ouKsIU9KJ5p2gAOruIPg8wQnKKC8u8g7
297.7  50 |         R83W3uS23SmbKvqoukxpMVKTQETAOAxFJmoms9R3xBO49W3nj4
315.6  53 |       hFD5weLSdXEVeVsLUagT85thO47xkz5V3Z6i1Kq7FUa28KF3ieLtx
327.5  55 |      7Y86ht4btXP9yFEh3623JMxq9HGiwDeBTBaQIWbSoIeNa0o5t1hsJrk
345.3  58 |     iOMXZurxCLOfb5qVRI2KaUp5NSKuXFgY4uZnHoCC9OylhpUXO7jOlvY5Np
357.3  60 |    QEOhMES2MqeQXXkpdC3jQHNeBTS2WyMlW8HbpDhYoB8CIjOuyBTzcDLethRU
363.2  61 |   LCyJFYOmBW9vxe7mX7V4GESjLaUUuA1Zh7ARDrQRt0Qzmmj3K7Bcp13svR78F
363.2  61 |   BvM81BJJDwRcfG0uuTqkCYmbO1RcDt1zhHIMkd9pkNz1NsnDXBQgevDKdpyic
375.1  63 |  3byZUfDh9pdmmc6QEqRP3PWdvqQaVwrc3F9ABLvgUuvJs1q8UXKCqFeMc43gjuW
375.1  63 |  FgvRbtxU4wLXEu292y2s0UlViJCSS8tyjm8id0EX8C28nwkEO8rC6zVLtXPGHp9
381.1  64 |  mbmr1fLAkuymO1qPlEx52OAt1Fl5SqTImgqjq5xdRiWFJOCmKW4jOfjtwSuw7h9S
381.1  64 |  WaiyFKxLKuSb7w3bLQdBajfEaN9ZBju9wMXZ5RscwfOO48uguJ0MNvL0R6fFfPrZ
381.1  64 |  fpLeBXxyckL91FREIQaR1LYsQeAkQy9kzGU5eVwBvh2zjdfnwi5t7QHUHZxNKzY6
375.1  63 |  cJ9hZQ5CamvdEK796Hsk8QbSoOSrBLDOrtj1ofEXLCggMYPXWUJ5njbUZNqNvCb
375.1  63 |  mmQyv05Sco5081Q55HMuNPTeTvsnQsMe3lfLm6iS6sFb6yoxK6thCjE5jUvIaPp
363.2  61 |   W8VMHnMeQ5Ct5Ekes5poI64ZQBu3KOWKB94oDDOQ5HHrC1obfEHG5bI8TEw4F
363.2  61 |   Z8nTfaSBvQWGYnqy0KbAB9hh4vJPzVQqJgBbFXc3t8LgDQniFIs7IOI6y2hHM
357.3  60 |    GFfFKxeCv0kfsIWOxuhp9dOrLhVIBRZrE2FPMwlRod5kXTkAjC1F5eiJJPrk
345.3  58 |     jANRS0tnQrBpr4cU8qHhqLOSFqG5Zr8klbCcwESwkRBzPD5dBFG77VSC2J
327.5  55 |      QueIIGiGonXdBEGzGILfhqkvUgEjpqStw8UKaWJSgr23G8BHfLOyLtX
315.6  53 |       JaJybOLA5AjxWem7pfDw9szAGt74iuEe5Si3NozPH5Y5oxKDFBLIB
297.7  50 |         AFmOHFtX8VrwFcCDpjm5snKL0lohtpNMtkhaBe5q9WhpwcJedR
279.8  47 |          lj5mb2E65flGldjAyXXeG0VRxWrZmQ1fuPuOTTJ0OgNLWA4
250.1  42 |             is1EI1sSWrwjEu3QUb3FrlGdynHfzvOXOuO7IesrLE
226.3  38 |               Fs3K8SQiaDxFBlMGbkz4jsAzlynU54JPvBOrDM
190.5  32 |                  AWtW2Ri8wH3AiQLpCr4lTaGh1ws2RTwp
142.9  24 |                      t1vOeH8rPnCPQCTniUIIO77R
```

This generate 64 char long password, random shaped. Circle in this case, each line is prepended by the entropy and password length.

## RNG source

It uses ```openssl(1)``` by default, but can also use ```haveged(8)``` if available or ```/dev/random```.

 	$ ./pwgen -e haveged
	$ ./pwgen -e random

## Password strength, length and number

```pwgen(1)``` compute max 64 char length passwords without special chars, that should be strong enough for the next decade. 

You can specify lengthi, number, and more secure passwords:

	$ ./pwgen 128		# 128 char long
	$ ./pwgen -s		# give me some special chars
	$ ./pwgen -s -12	# give me only 12, but secured
	$ ./pwgen -f		# a full screen height of passwords

## Shapes

```pwgen(1)``` display your passwords in square, circle, cross or triangle. Default is to pick a random one among them.

	$ ./pwgen -a circle 42 -s		# a circle shaped of 42 char long secured passwords

If image is provided by ```-i```, ```pwgen(1)``` will shaped passwords accordingly:

```
·0·> ./pwgen -i cthulhu.png -q

                             jDLM3
                     tCgrKc83gnExQuL9EinEfs
                 112cVHvp1YZQ      4Kkbv6dTyKVw
              YHQgaVsZz3                21TmJHz0az
            7jTf L   3M                   M   1 9Kzy
          e7T9KVe8   b                    T   Nif9SUzb
        0uM    rJ   O                      6   nY    1r6
       Jd  gpN    Gl                        R3    V0p  3A
      uK AqO      5C                        yW      7Lk pc
     QyKDf   aYC  UTq                      uDb  Voz   LgEE2
    JYit   tbpDS  6GREp                  V7qeB  KvN5v   FwIO
    c1J   PUXY3   A  NW                  O0  0   oAFUC   22b
   2UTz  26igQ   Z                            D   0kfJs  1PrL
   5ccK  79ME   9o       B2          14        D   TBj6   3zu
   QRPf   RM  UPbz        uep      7er    F   7UmX  tM0  G2Dc
   iDMvh     2whXiKvQc       j    b       LWEtAxy0i     vgKSa
   2eDqbE                      9a                      fAAfA1
   BSJ4V   UK2SDC  c9L         tE         YVbLgJBM1mJ   B0pG3
    o24Q   IIB    v4q                      fWP     Oj   tN40
    cPMR   8n AFx     QVDg            BxDQ     2l6 AJ   walM
     J67D  PVSjR     5k2z       G      PSWnI    dc4mp  o2BP
      z76i   xO   O  eB    aq  wh  YJ    KE      x3   ocT1
       lH3Ou            TVm83  Yg   egp6            UbkRB
        gImfc6    p  3eTH      I5      Jugp       Pezfjg
          kffE   ms       4    bk    D       Cm   TbiT
            oHT        hdF   x  a b   ILs        CdV
              OAJ3etN       zQ KU FM       IsnVDM5
                 FDzB2Ao2dOPe DK6O enRbkwHsH2cO
                     xtWNcpqIZuBLgnM696tQJR
                              3MjBa

```

## Misc

	$ ./pwgen -q		# Do not prepend lines by password length
	$ ./pwgen -v		# Be verbose
	$ ./pwgen -d		# Be more verbose

## Caveats

- Shapes rendering speed can be improved

# Made with

- ```bash(1)```, ```bc(1)```, ```tr(1)```
- ```shellcheck(1)```
- Tested on GNU/Linux, Mac OSX, FreeBSD
