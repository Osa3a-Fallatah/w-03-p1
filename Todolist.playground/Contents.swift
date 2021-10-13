// creat enum as  ture or false status
enum TaskStatus {
    case completed
    case pending     }
// struct for items (-Tasktitle- and enum status: if complet or not)

struct Item {
    var taskTitle: String
    var taskStatus: TaskStatus   }
// struct to list  many (struct Item) as arry with -Listtitle-

struct List {
    var listTitle: String
    var items: [Item] = []
    mutating func addNewItem(item: Item) {
        self.items.append(item)
    }
    
    func printAllItems() {
        for lop in items
        {  print (lop)  }
    }
    mutating func updateItem (selectindx:Int , newItemTitle:String, isCompelete:TaskStatus){
        self.items[selectindx].taskTitle = newItemTitle
        self.items[selectindx].taskStatus = isCompelete
    }
    // show completed items first
    mutating func sortItemByStatus(){
        self.items = items.sorted{$0.taskStatus.hashValue < $1.taskStatus.hashValue}
    }
    mutating func deleteItem (index:Int ){
        if items.count > index {
            items.remove(at: index)}
        else { print("error handling , you cant remove this item")}
    }
}
   // class for functions use(struct List) and its content
class ToDo {
    var lists: [List] = []
    
    //add items to the list
    func addNewList(list:List) {
        lists.append(list)}
    
    //loop for printing
    func printAllList() {
        for lop in lists {
            print (lop.listTitle)  }
    }
    
    // delelet items form the list
    func deleteList (index:Int ){
        if myLists.lists.count > index {
            lists.remove(at: index)}
        else { print("error handling , enter correct index")}
    }
    
    func updateListTitle (selcectListNumber:Int ,newTitleForList:String){
        if lists.count  > selcectListNumber {
            lists[selcectListNumber].listTitle = newTitleForList}
        else {print("Error -list Index out of range-\(lists.count) ")}
    }
    
    
}


var myLists = ToDo()
//  creat the list
var list_1 = List(listTitle: "Personal_0l")
//adding the list mylist
myLists.addNewList(list: list_1)
// add the items to the list


list_1.addNewItem(item: Item(taskTitle: "go to collage", taskStatus: .completed))
list_1.addNewItem(item: Item(taskTitle: "learn new cods stay till 5pm", taskStatus: .pending))
list_1.addNewItem(item: Item(taskTitle: "do Tasks in Project", taskStatus:.completed))
list_1.addNewItem(item: Item(taskTitle: "Grade Projects", taskStatus: .pending))
//list_1.deleteItem(index: 3)
//list_1.sortItemByStatus()
list_1.printAllItems()
//list_1.updateItem(selectindx: 2, newItemTitle: "finish project", isCompelete: .pending)
var list_2 = List(listTitle: "Gym list")
//myLists.addNewList(list: list_2)
//myLists.updateListTitle(selcectListNumber: 1, newTitleForList: "work list")
//myLists.printAllList()


