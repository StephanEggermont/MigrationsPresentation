Class {
	#name : 'MigrationsProject',
	#superclass : 'Object',
	#instVars : [
		'title',
		'risks',
		'knowledgeAreas',
		'tasks',
		'teams'
	],
	#category : 'MigrationsPresentation-Domain',
	#package : 'MigrationsPresentation',
	#tag : 'Domain'
}

{ #category : 'instance creation' }
MigrationsProject class >> titled: aName [
	^self new
		title: aName;
		yourself
]

{ #category : 'accessing' }
MigrationsProject >> addKnowledgeArea: aTitle description: aDescription [
	|area|
	area := KnowledgeArea new.
	area title: aTitle;
		description: aDescription.
	self knowledgeAreas add: area 
]

{ #category : 'accessing' }
MigrationsProject >> addKnowledgeArea: aTitle description: aDescription category: aCategory [ 
	|area|
	area := KnowledgeArea new.
	area title: aTitle;
		description: aDescription;
		category: aCategory.
	self knowledgeAreas add: area 
]

{ #category : 'accessing' }
MigrationsProject >> addRisk: aTitle description: aDescription [
	|risk|
	risk := MigrationsRisk new.
	risk title: aTitle;
		description: aDescription.
	self risks add: risk 
]

{ #category : 'accessing' }
MigrationsProject >> addTeam: aTitle [ 
	self addTeam: aTitle description: ''
]

{ #category : 'accessing' }
MigrationsProject >> addTeam: aTitle description: aDescription [
	|team|
	team := (Team named: aTitle)
		description: aDescription.
	self teams add: team 
]

{ #category : 'accessing' }
MigrationsProject >> gtMapFor: aView [
	<gtView>

	^ aView mondrian
		title: 'Map';
		priority: 62;
		painting: [ :aMondrian | 
			aMondrian nodes
				stencil: [ :each | 
					self rectangleNamed: each  ];
				with: #(risks knowledgeAreas tasks teams)
				forEach: [ :area |
					aMondrian nodes
						stencil: [ :element |
							(element elementFor: self)
								constraintsDo: [:c |
									c vertical fitContent].];
						with: (self perform: area).
				aMondrian layout grid].
					
			aMondrian layout grid

 ]
]

{ #category : 'accessing' }
MigrationsProject >> initialize [
	risks := OrderedCollection new.
	tasks := OrderedCollection new.
	knowledgeAreas := OrderedCollection new.
	teams := OrderedCollection new
]

{ #category : 'accessing' }
MigrationsProject >> knowledgeAreas [
	^ knowledgeAreas
]

{ #category : 'accessing' }
MigrationsProject >> knowledgeAreas: anObject [
	knowledgeAreas := anObject
]

{ #category : 'accessing' }
MigrationsProject >> rectangleNamed: aTitle [
	|element text contentsArea|
	element := BlElement new.
	text := BrLabel new text:(aTitle asRopedText).
	text aptitude: BrGlamorousLabelAptitude new glamorousCodeSize.
	element addChild: text.
	contentsArea := BlElement new.
	contentsArea border: Color gray.
	contentsArea constraintsDo: [:c |
		c horizontal matchParent.
		c vertical matchParent].
	element addChild: contentsArea. 
	^element
]

{ #category : 'accessing' }
MigrationsProject >> risks [
	^ risks
]

{ #category : 'accessing' }
MigrationsProject >> risks: anObject [
	risks := anObject
]

{ #category : 'accessing' }
MigrationsProject >> tasks [
	^ tasks
]

{ #category : 'accessing' }
MigrationsProject >> tasks: anObject [
	tasks := anObject
]

{ #category : 'accessing' }
MigrationsProject >> teams [
	^teams
]

{ #category : 'accessing' }
MigrationsProject >> teams: anObject [
	teams := anObject
]

{ #category : 'accessing' }
MigrationsProject >> title [
	^ title
]

{ #category : 'accessing' }
MigrationsProject >> title: anObject [
	title := anObject
]
