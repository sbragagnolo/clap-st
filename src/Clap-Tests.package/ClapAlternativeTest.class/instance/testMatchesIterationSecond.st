tests
testMatchesIterationSecond
	| block |
	(flagTwo stub matchOn: argv) willReturn: okMatch; useOnce.
	block := Mock named: 'aBlock'.
	
	subject matchesOn: argv do: block.
	
	(block should receive cull: okMatch) once