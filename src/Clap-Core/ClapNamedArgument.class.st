Class {
	#name : #ClapNamedArgument,
	#superclass : #Object,
	#instVars : [
		'name',
		'value'
	],
	#category : #'Clap-Core-Specification'
}

{ #category : #'instance creation' }
ClapNamedArgument class >> fromKeyword: aKeyword [
	| args |
	args := ClapNamedParameter splitter split: aKeyword.
	^ self new
		name: args first;
		value: args second;
		yourself
]

{ #category : #accessing }
ClapNamedArgument >> name [
	^ name
]

{ #category : #accessing }
ClapNamedArgument >> name: aName [
	name := aName
]

{ #category : #accessing }
ClapNamedArgument >> value [
	^ value
]

{ #category : #accessing }
ClapNamedArgument >> value: aValue [
	value := aValue
]
