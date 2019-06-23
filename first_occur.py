#!/usr/bin/python3

import sys

def freq(text):
	dict = {}
	for c in text:
		keys = dict.keys()
		if c in keys:
			dict[c]=text.find(c)
		else:
			dict[c]=text.find(c)
	return dict

if len(sys.argv) < 2:
	print("please enter a text as argument !!")

else:
	print(freq(sys.argv[1]))

