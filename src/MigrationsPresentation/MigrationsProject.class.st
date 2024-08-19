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
					BlElement new
						size: 5 @ 5;
						geometry: BlRectangleGeometry new;
						background:  Color orange;
				aptitude: (BrGlamorousWithTooltipAptitude content: each tooltip) ];
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
