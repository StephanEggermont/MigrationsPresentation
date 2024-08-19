Class {
	#name : #MIEntity,
	#superclass : #Object,
	#instVars : [
		'title',
		'description'
	],
	#category : #'MigrationsPresentation-Domain'
}

{ #category : #accessing }
MIEntity >> description [
	^ description
]

{ #category : #accessing }
MIEntity >> description: anObject [
	description := anObject
]

{ #category : #accessing }
MIEntity >> title [
	^ title
]

{ #category : #accessing }
MIEntity >> title: anObject [
	title := anObject
]

{ #category : #accessing }
MIEntity >> tooltip [
	^ [ BrLabel new
		aptitude: BrGlamorousLabelAptitude new glamorousRegularFontAndSize;
		padding: (BlInsets all: 2);
		text: self title;
		alignCenter ] asStencil
]
