Class {
	#name : #MigrationsProject,
	#superclass : #Object,
	#instVars : [
		'title',
		'risks',
		'knowledgeAreas',
		'tasks'
	],
	#category : #'MigrationsPresentation-Domain'
}

{ #category : #accessing }
MigrationsProject >> addRisk: aTitle description: aDescription [
	|risk|
	risk := MigrationsRisk new.
	risk title: aTitle;
		description: aDescription.
	self risks add: risk 
]

{ #category : #accessing }
MigrationsProject >> gtMapFor: aView [
	<gtView>

	^ aView mondrian
		title: 'Map';
		priority: 62;
		painting: [ :aMondrian | 
			aMondrian nodes
				stencil: [ :each | 
					self rectangleNamed: each title ];
				with: self risks.
			aMondrian layout grid

 ]
]

{ #category : #accessing }
MigrationsProject >> initialize [
	risks := OrderedCollection new.
	tasks := OrderedCollection new.
	knowledgeAreas := OrderedCollection new
]

{ #category : #accessing }
MigrationsProject >> knowledgeAreas [
	^ knowledgeAreas
]

{ #category : #accessing }
MigrationsProject >> knowledgeAreas: anObject [
	knowledgeAreas := anObject
]

{ #category : #accessing }
MigrationsProject >> rectangleNamed: aTitle [
	|element text|
	element := BrVerticalPane new.
	element border: Color gray.
	text := BrLabel new text:(aTitle asRopedText).
	text aptitude: BrGlamorousLabelAptitude new glamorousCodeMiniSize.
	element addChild: text.
	element addChild: BlElement new. 
	^element
]

{ #category : #accessing }
MigrationsProject >> risks [
	^ risks
]

{ #category : #accessing }
MigrationsProject >> risks: anObject [
	risks := anObject
]

{ #category : #accessing }
MigrationsProject >> tasks [
	^ tasks
]

{ #category : #accessing }
MigrationsProject >> tasks: anObject [
	tasks := anObject
]

{ #category : #accessing }
MigrationsProject >> title [
	^ title
]

{ #category : #accessing }
MigrationsProject >> title: anObject [
	title := anObject
]
