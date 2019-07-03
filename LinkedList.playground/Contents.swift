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
        //empty list
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
    
    //Delete − Delete an element from first..
    func DeleteFrist(){
        if head?.value != nil{
            head = head?.next
        }
    }
    
    //Delete − Deletes an element using the given key..
    func Delete(value : Int){
        if head?.value == value{
            head = head?.next
            return
        }
        var prev : Node?
        var currentNode = head
        while currentNode?.value != value && currentNode != nil {
            prev = currentNode
            currentNode = currentNode?.next
        }
        prev?.next = currentNode?.next
    }
    
    //Display − Displays the complete list.
    /*
     Whenever you are inside of an interview room they’er going to ask you
     I think about like two or three questions and print out the linked lists items
     inside your code easiest one if you’re not able to get this pretty good chance
     that you’re not gonna get the job
     */
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
//2 -> 3 -> nil
//ownLinkList.DeleteFrist()
//1 -> 3 -> nil
ownLinkList.Delete(value: 2)
ownLinkList.printList()
