"
Tests to enforce proper categorization
"
Class {
	#name : #ProperMethodCategorizationTest,
	#superclass : #TestCase,
	#category : #ReleaseTests-Categorization
}

{ #category : #utilities }
ProperMethodCategorizationTest >> assureAll: selector areCategorizedIn: category whenSubclassOf: aClass [
	| violating |
	violating := OrderedCollection new.
	aClass allSubclassesDo: [:cls | cls methods do: [:m |
			(m selector = selector and: [ m category ~= category ])
				ifTrue: [ violating add: m -> m category ]
			]
		 ].
	self assert: violating isEmpty description: ('Subclasses of {1} should have #{2} methods in category {3}' format: { aClass asString. selector. category })

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testCloneMethodNeedsToBeInCopyingProtocol [
	"The #clone methods should be in method protocol 'copying'"
	
	self assureAll: #clone areCategorizedIn: #copying  whenSubclassOf: Object

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testCopyMethodNeedsToBeInCopyingProtocol [
	"The #copy methods should be in method protocol 'copying'"
	
	self assureAll: #copy areCategorizedIn: #copying  whenSubclassOf: Object

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testDeepCopyMethodNeedsToBeInCopyingProtocol [
	"The #deepCopy methods should be in method protocol 'copying'"
	
	self assureAll: #deepCopy areCategorizedIn: #copying  whenSubclassOf: Object

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testEqualMethodNeedsToBeInComparingProtocol [
	"The #= method should be in method protocol 'comparing'"
	
	self assureAll: #= areCategorizedIn: #comparing  whenSubclassOf: Object

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testFinalizeMethodNeedsToBeInComparingProtocol [
	"The #finalize method should be in method protocol 'finalization'"
	
	self assureAll: #finalize areCategorizedIn: #finalization  whenSubclassOf: Object

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testFinalizeValuesMethodNeedsToBeInComparingProtocol [
	"The #finalizeValues methods should be in method protocol 'finalization'"
	
	self assureAll: #finalizeValues areCategorizedIn: #finalization  whenSubclassOf: Object

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testHashMethodNeedsToBeInComparingProtocol [
	"The #hash method should be in method protocol 'comparing'"
	
	self assureAll: #hash areCategorizedIn: #comparing  whenSubclassOf: Object

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testPostCopyMethodNeedsToBeInCopyingProtocol [
	"The #postCopy methods should be in method protocol 'copying'"
	
	self assureAll: #postCopy areCategorizedIn: #copying  whenSubclassOf: Object

]

{ #category : #'tests - sunit' }
ProperMethodCategorizationTest >> testRunCaseMethodInSUnitTestsNeedsToBeInRunningProtocol [
	"The #tearDown method in SUnit test classes should be in method protocol 'running'"
	
	self assureAll: #runCase areCategorizedIn: #running  whenSubclassOf: TestCase

]

{ #category : #'tests - sunit' }
ProperMethodCategorizationTest >> testSetUpMethodInSUnitTestsNeedsToBeInRunningProtocol [
	"The #setUp method in SUnit test classes should be in method protocol 'running'"

	self assureAll: #setUp areCategorizedIn: #running  whenSubclassOf: TestCase

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testShallowCopyMethodNeedsToBeInCopyingProtocol [
	"The #shallowCopy methods should be in method protocol 'copying'"
	
	self assureAll: #shallowCopy areCategorizedIn: #copying  whenSubclassOf: Object

]

{ #category : #'tests - sunit' }
ProperMethodCategorizationTest >> testTearDownMethodInSUnitTestsNeedsToBeInRunningProtocol [
	"The #tearDown method in SUnit test classes should be in method protocol 'running'"
	
	self assureAll: #tearDown areCategorizedIn: #running  whenSubclassOf: TestCase

]

{ #category : #'tests - object' }
ProperMethodCategorizationTest >> testVeryDeepCopyMethodNeedsToBeInCopyingProtocol [
	"The #veryDeepCopy methods should be in method protocol 'copying'"
	
	self assureAll: #veryDeepCopy areCategorizedIn: #copying  whenSubclassOf: Object

]
