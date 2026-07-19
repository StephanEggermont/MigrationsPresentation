Class {
	#name : 'SkillsMatrixExample',
	#superclass : 'Object',
	#category : 'MigrationsPresentation-Scenarios',
	#package : 'MigrationsPresentation',
	#tag : 'Scenarios'
}

{ #category : 'accessing' }
SkillsMatrixExample >> member1 [
	<gtExample>
	|member|
	member := TeamMember named: 'Andrea'.
	^member
]

{ #category : 'as yet unclassified' }
SkillsMatrixExample >> team1 [
	<gtExample>
	|team|
	team := Team named: 'LegacyMaintenance'.
	^team
]
