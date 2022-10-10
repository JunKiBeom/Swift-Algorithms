// 스택은 LIFO(Last In First Out) 특징을 가지는 자료구조
// Swift의 배열은 스택과 동일한 append, removeLast 메서드 등을 지원해 구현하기 쉽다.

import Foundation

struct Stack<T> {
    var elements: [T] = []
    // 제네릭으로 데이터를 담을 수 있는 배열 생성

    var count: Int {
        return elements.count
    }
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    mutating func push(_ element: T) {  // O(1)
        elements.append(element)
    }

    func top() -> T? {  // O(1)
        return elements.last
    }
    mutating func pop() -> T? {  // O(1)
        return elements.popLast()
        // removeLast를 사용하면 배열이 비어있을때 에러 발생, popLast를 사용하면 nil 반환
    }

}