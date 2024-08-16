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
