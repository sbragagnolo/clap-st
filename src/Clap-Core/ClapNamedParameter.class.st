Class {
	#name : #ClapNamedParameter,
	#superclass : #ClapFlag,
	#category : #'Clap-Core-Specification'
}

{ #category : #evaluating }
ClapNamedParameter class >> basicMeaning [
	^ [ :match | match namedArgument ]
]

{ #category : #conf }
ClapNamedParameter class >> splitter [
	^ '='
]

{ #category : #matching }
ClapNamedParameter >> addTo: aClapCommand [
	aClapCommand addNamedParameter: self 
]

{ #category : #matching }
ClapNamedParameter >> canMatchWith: word [
	| piece |
	piece := (self class splitter split: word) first trimBoth.
	^ super canMatchWith: piece
]
