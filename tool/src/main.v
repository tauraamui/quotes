module main

import os
import json

struct Quote {
	content   string
	author    string
	reference string
}

fn main() {
	quote := Quote {
		content:   os.input("What is the quote? -> ")
		author:    os.input("Who? -> ")
		reference: os.input("Where? -> ")
	}
	println(json.encode(quote))
	os.write_lines("../quotes.txt", [json.encode(quote)])!
}
