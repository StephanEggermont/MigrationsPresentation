Class {
	#name : 'KnowledgeArea',
	#superclass : 'MIEntity',
	#instVars : [
		'category'
	],
	#category : 'MigrationsPresentation-Domain',
	#package : 'MigrationsPresentation',
	#tag : 'Domain'
}

{ #category : 'accessing' }
KnowledgeArea >> category [
	^ category
]

{ #category : 'accessing' }
KnowledgeArea >> category: anObject [
	category := anObject
]

{ #category : 'as yet unclassified' }
KnowledgeArea >> colorForCategory: aSymbol [
	aSymbol = #old ifTrue: [^Color gray].
	aSymbol = #new ifTrue: [^Color green].
	aSymbol = #migration ifTrue: [^Color blue].
	^Color red
]

{ #category : 'as yet unclassified' }
KnowledgeArea >> elementFor: aContextObject [
	aContextObject class = MigrationsProject ifTrue: [ |uml|
		uml := BrUmlClassElement new.
			uml text: self title in: #label.
			uml border: (self colorForCategory: self category).
			^uml]
	ifFalse: [^BlElement new
			background: Color orange]
]
