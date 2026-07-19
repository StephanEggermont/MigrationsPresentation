Class {
	#name : 'TeamMember',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'MigrationsPresentation-Domain',
	#package : 'MigrationsPresentation',
	#tag : 'Domain'
}

{ #category : 'as yet unclassified' }
TeamMember class >> named: aString [
	^self new
		name: aString;
		yourself
]

{ #category : 'accessing' }
TeamMember >> name [
	^ name
]

{ #category : 'accessing' }
TeamMember >> name: anObject [
	name := anObject
]
