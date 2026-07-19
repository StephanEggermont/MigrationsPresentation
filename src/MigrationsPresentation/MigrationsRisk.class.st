Class {
	#name : 'MigrationsRisk',
	#superclass : 'MIEntity',
	#category : 'MigrationsPresentation-Domain',
	#package : 'MigrationsPresentation',
	#tag : 'Domain'
}

{ #category : 'as yet unclassified' }
MigrationsRisk >> elementFor: aContextObject [
	aContextObject class = MigrationsProject ifTrue: [ |uml|
		uml := BrUmlClassElement withContainers: #(label attributes).
			uml text: self title in: #label.
			^uml]
	ifFalse: [^BlElement new
			background: Color orange]
]
