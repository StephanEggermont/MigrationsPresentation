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
					self rectangleNamed: each  ];
				with: #(risks knowledgeAreas tasks)
				forEach: [ :area |
					aMondrian nodes
						stencil: [ :element |
							BlElement new
								background: Color orange];
						with: (self perform: area).
				aMondrian layout grid].
					
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
	|element text contentsArea|
	element := BlElement new.
	text := BrLabel new text:(aTitle asRopedText).
	text aptitude: BrGlamorousLabelAptitude new glamorousCodeMiniSize.
	element addChild: text.
	contentsArea := BlElement new.
	contentsArea border: Color gray.
	contentsArea constraintsDo: [:c |
		c horizontal matchParent.
		c vertical matchParent].
	element addChild: contentsArea. 
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
