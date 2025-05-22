Class {
	#name : #Team,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'MigrationsPresentation-Domain'
}

{ #category : #'as yet unclassified' }
Team class >> named: aString [ 
	^self new
		name: aString;
		yourself
]

{ #category : #accessing }
Team >> name [
	^ name
]

{ #category : #accessing }
Team >> name: anObject [
	name := anObject
]
