module main

import os
import json

struct Quote {
	content   string
	author    string
	reference string
}

fn main() {
	mut file := os.open_append("./quotes.txt") or { panic("unable to open file: $(err)") }
	defer { file.close() }
	quote := Quote {
		content:   os.input("What is the quote? -> ")
		author:    os.input("Who? -> ")
		reference: os.input("Where? -> ")
	}
	println(json.encode(quote))

	file.writeln(json.encode(quote))!
}
