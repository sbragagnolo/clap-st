tests
testMatchesWithSinglePositional
	| match |
	subject add: (ClapPositional withName: 'bar').
	argv stub peek willReturnValueFrom: #('foo' 'valueforbar').
	argv stub next willReturnValueFrom: #('foo' 'valueforbar').
	
	match := subject matchOn: argv.
	
	argv should receive next twice.
	match should not be isMismatch.
	match alias should equal: 'foo'.
	match should be includesKey: 'bar'. "FIXME not sure about the dictionary protocol"
	(match at: 'bar') should equal: 'valueforbar'