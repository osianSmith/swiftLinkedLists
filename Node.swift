//
//  Node.swift
//  LinkedLists
//
//  Created by Osian on 21/01/2017.
//  Copyright © 2017 Osian Smith. All rights reserved.
//

import Foundation
class Node {
	private var next : Node? // This is the next node in the list
	private var previous : Node? // this is the preaveas node
	private var element : Any! // this is the eleemenet that the object will hold. this can be any object that is created and passed to swift BUT MUST BE THE SAME AS ALL ELEMENTS IN THE LINKED LIST
	
	init(next : Node, previous : Node, element : Any ) {
		self.next = next
		self.previous = previous
		self.element = element
	}
	init(element : Any ) {
		self.element = element
	}
	
	// this will return the element of this linked list
	func getElement() -> Any {
		return self.element
	}
	
	// this sets the new element
	func setElement(newElement : Any) {
		self.element = newElement
	}
	
	//this gets the next element
	func getNext() -> Node {
		return self.next
	}
	
	func createHead(newNode : Node) {
		if next == nil {
			next! = newNode
		}
		else {
			next!.createHead(newNode: newNode)
		}
	}
	//this sets head
	func setNext(newNext :Node) {
		if
		self.next = newNext
	}
}
