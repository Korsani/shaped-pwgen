
# shaped-pwgen

Generate a shaped bunch of passwords

# Starting

## Pre-requisite

- a working bash(1)
- bc(1)
- openssl(1)

## Installation

Copy ```pwgen``` somewhere accessible by your ```$PATH```

# Running

It's as simple as

    $ ./pwgen
	  0:
	 24:                     BotVRHw66MpRo5NoIM7Le4E5
	 32:                 an8mnj3QCclLr7KclDLf5jq7Y0uhptvC
	 38:              RyLa0peqebRn5fBIEVvyVOOqqr59zN7Es6O1TZ
	 42:            RzW9Wd9sjiV2ztdCvHEGDa6Cjf4T9ycDzKIhUGY6ph
	 47:         x8cBhV8E1jETMNLkWgRX5Gpwdon2WjDzPONtHPswZNGV6S3
	 50:        MCXZLztmUwlbZZ9IabropMS5cFzwxcxnCub6YYumAo8YSSAGXY
	 53:      di9c5uNFGEYzyj8UzBnJFlSxPaipttt9IjR40lP2tMRzLqhBxo7ny
	 55:     KMQUtiPJBYm5l27tJi6QlQkgxXa47skC54SJwcaltu87duPGCs17QbV
	 58:    OsFRiDo6xceq7XvXxaiNjHmN0prpCzNA367dgfv2JdaoqezAyuQWrViyNg
	 60:   3aDVpLLlpQf40AbkOJRArgGhhAc1JO6bRuRnzJdV7mbXoqyhrl9EMdaBJCJd
	 61:  jraiATWYGCbo8bvwrEQ65ZFN4fVxQoBgpz4nXhTpzxZXybeWTDak8q9blT8PE
	 61:  zhyLhOWwEHmMw0sSdkpRtQr8uyrjDRc286GrcmKtWQbkYkizrbuYB2MgyV2bw
	 63: Q9Wd1Bj8LPPfclhS7oV6B8E4CijX9UtCgBdc4Kux0MAW3NssIhKN6X2D4G4vJj2
	 63: Id9yt1ptxDewe1kswYy8oNBY63j3cRq8bKh7aMibvw0ioAkDoFVMLNBo5b8BPIY
	 64: V8ZqsLqAgS2Lo4lO2aPy7Ii4FjrfHggvR8hq1LZX5rwM0Wv5onzn9vkeAbUeBTZg
	 64: NainJrbQrBYDTEijbH0bB4WN5Du1libFTMzpOvePFxgOFsVYdMsUOZ7VYiHzFi5k
	 64: oBXlwhq9zZQNNK6fPIaGW4xPMKAfd295ggkzProx9yjCYMHb4PwG6ktIfpyj0WP7
	 63: 3LC6zabdvlOPUFQhUgxs6Henn5PUt3xM01aMq1SNiKdzVFsWb9qKJ5NuluuPhzM
	 63: h0Jbbqw0kxvFBNe9cmDgZmAbpyKNimGDOP5hJjwfzSpl1J4JJDzxYF7NHPPcpem
	 61:  kTEid8NEuK7qG9thJZR3VZ1Cc1lAlED4bHLE0lfi8agq9xXHP6wxDbSaXixB1
	 61:  34MzrPDVaUeyFV3Bt6tlJcF3pNXc2uIFWL8BnxAGCOpp21TzB2oDjAn54anQy
	 60:   RGirNUjnR03h6B2RkOxZbMiGhir1GgW40PIuNzxiGtPf431gpxyTFfHqZpbM
	 58:    5pUy0LP4y8OqJBhkMVt4ZkCtrJSYvMQsLiBBGq3LJWsrm5gmXPZxYv4JY1
	 55:     nUIUMFvmUenm5OxER9QvzkU9HTs3wqwvA8DJ7bI2ieiVhtgmBfzpOn8
	 53:      DrTZ6hfexPcYjZym1cS1TXwTRIVnzkShykwTSh6MVKihp0ninCnfb
	 50:        lMZIY5MnOA1BwRZKTANaPYygic6Ccbogzc66mBSciixkN4XFzu
	 47:         AMstewB8oMEm0psT9fyX4AfJEI16vvoTxGAwFE3xMbSevFo
	 42:            vRAgih0SODdIZrXM4kuiXj8WDJTktsOdCEUCNm1DB6
	 38:              3BY6zmL5w1ntYn33hAp2jf3eGQevuU4zLJ61JQ
	 32:                 UWJzjZVrQ8kYedtAMYavwm9rb3LmkbBf
	 24:                     KEnLR6l5GAOuGB5M50mvp3Gp

 This generate 64 char long password, randome shaped. Circle in this case, each line is prepended by the password length.


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

```pwgen(1)``` display your passwords in square, circle, cross or triangle. Default is to choose a random one among them.

	$ ./pwgen -a circle 42 -s		# a circle shaped of 42 char long secured passwords

## Misc

	$ ./pwgen -q		# Do not prepend lines by password length
	$ ./pwgen -v		# Be verbose
	$ ./pwgen -d		# Be more verbose

# Made with

- ```bash(1)```, ```bc(1)```, ```tr(1)```
- Tested on GNU/Linux, Mac OSX, FreeBSD
