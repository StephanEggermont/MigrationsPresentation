Class {
	#name : #BaselineOfMigrationsPresentation,
	#superclass : #BaselineOf,
	#category : #BaselineOfMigrationsPresentation
}

{ #category : #loading }
BaselineOfMigrationsPresentation class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'MigrationsPresentation' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfMigrationsPresentation >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'MigrationsPresentation'
		]
]
