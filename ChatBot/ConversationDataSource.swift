import Foundation
class ConversationDataSource {
    
    /// The number of Messages in the conversation
    var messageCount = 0
    
    /// Add a new question to the conversation
    func add(question: String) {
        messageCount += 1
        print("Asked to add question: \(question)")
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        messageCount += 1
        print("Asked to add answer: \(answer)")
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        
        if index % 2 == 0 {
            return Message(date: Date(), text: "Question \(index / 2)", type: .question)
        } else {
            return Message(date: Date(), text: "Answer \(index / 2)", type: .answer)
        }
       
    }
}
