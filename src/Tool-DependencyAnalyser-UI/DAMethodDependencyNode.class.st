"
A PDMethodNode is the superclass node for PDReferenceDependencyNode and PDExtensionDependencyNode. 
Indeed these two nodes have the same behavior to browse the dependency in the Nautilus UI.

"
Class {
	#name : #DAMethodDependencyNode,
	#superclass : #DANode,
	#category : #Tool-DependencyAnalyser-UI-Nodes
}

{ #category : #browse-nautilus }
DAMethodDependencyNode >> browseInNautilus [
	self browseMethodInNautilus: self content method
]
