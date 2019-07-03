import UIKit

/*
 A linked list is a linear data structure:
 
 ====================================================================================
A linked list is a linear data structure, in which the elements are not
 stored at contiguous memory locations. The elements in a linked list
 are linked using pointers.
 ------------------------------------------------------------------------------------
 Example:
 ####################################################################################
 In simple words, a linked list consists of nodes where each node contains
 a data field and a reference(link) to the next node in the list
 1 -> 2 -> 3 -> nil
 ####################################################################################
 */

class Node{
    let value:Int
    var next : Node?
    init(value:Int, next : Node?) {
      self.value = value
      self.next = next
    }
}

class LinkedList{
    var head : Node?
    
    //Setup − Dummy node.
//    init() {
//        let threeNode = Node(value: 3, next: nil)
//        let twoNode = Node(value: 2, next: threeNode)
//        head = Node(value: 1, next: twoNode)
//    }
    
    //Insertion − Adds an element at the ending of the list.
    func insert(value : Int){
        //emty list
        if head == nil{
            head =  Node(value: value, next: nil)
            return
        }
        var currentNode = head
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
         currentNode?.next = Node(value: value, next: nil)
    }

    //Display − Displays the complete list.
    func printList(){
        print("Printing out list of node")
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? -1)
            currentNode = currentNode?.next
        }
    }
}

let ownLinkList = LinkedList()
//1 -> nil
ownLinkList.insert(value: 1)
//1 -> 2 -> nil
ownLinkList.insert(value: 2)
//1 -> 2 -> 3 -> nil
ownLinkList.insert(value: 3)
ownLinkList.printList()
