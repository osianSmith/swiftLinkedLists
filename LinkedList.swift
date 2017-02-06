//
//  LinkedList.swift
//  LinkedLists
//
//  Created by Osian on 21/01/2017.
//  Copyright © 2017 Osian Smith. All rights reserved.
//

import Foundation
//This allows for a faster search up time as we can go backwards on a node
class LinkedLists {
	private enum linkedListErrors : Error {
		case OutOfBoundsError
		case EmptyLinkedListError
	}
	private var head :  Node?
	private var tail : Node?
	private var nodeCount : Int
	
	
	//creates a head with a node
	init(head : Any){
		self.head  = Node(element: head)
		nodeCount = 1
	}
	//creates a empty linked list
	init(){
		head = nil
		nodeCount = 0
	}
	//checks to see if the list is empty
	func isEmpty() -> Bool {
		return (head == nil && tail == nil)
	}
	
	//this empties the node
	func clear(){
		head = nil
		tail = nil
		nodeCount = 0
	}
	
	//this will return the first element of the list
	func getFirst()  throws -> Any {
		if head == nil {
			throw linkedListErrors.EmptyLinkedListError
		}
		else {
			return head!.getElement()
		}
		
	}
	
	//this will return the last element of the list
	func getLast()  throws -> Any {
		if self.tail == nil {
			throw linkedListErrors.EmptyLinkedListError
		}
		else {
			return self.tail!.getElement()
		}
	}
	
	//this adds the element to the end of the list
	func addsElememt(newElment : Any) {
		let newNode = Node(element: newElment)
		if head? == nil {
			head = newNode
			tail = newNode
			nodeCount = 1
		}
		else {
			head!.createHead(newNode: newNode) // resvusive
			nodeCount ++
		}
		head!
		tail!
	}
	
}
