Class {
	#name : 'Team',
	#superclass : 'MIEntity',
	#instVars : [
		'name'
	],
	#category : 'MigrationsPresentation-Domain',
	#package : 'MigrationsPresentation',
	#tag : 'Domain'
}

{ #category : 'as yet unclassified' }
Team class >> named: aString [ 
	^self new
		name: aString;
		yourself
]

{ #category : 'as yet unclassified' }
Team >> elementFor: aContextObject [
	aContextObject class = MigrationsProject ifTrue: [ |uml|
		uml := BrUmlClassElement new.
			uml text: self name in: #label.
			uml border: Color green.
			^uml]
	ifFalse: [^BlElement new
			background: Color orange]
]

{ #category : 'accessing' }
Team >> name [
	^ name
]

{ #category : 'accessing' }
Team >> name: anObject [
	name := anObject
]
