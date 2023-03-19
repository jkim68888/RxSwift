import UIKit
import RxSwift

var greeting = "Hello, playground"

// MARK: - create observable
let observable = Observable.just(1)
let observable2 = Observable.of(1,2,3)
let observable3 = Observable.of([1,2,3]) // [Int] : elements in array
let observable4 = Observable.from([1,2,3,4,5]) // Int : individual elements

// MARK: - subscribe to events
observable4.subscribe { event in
	print(event) // subscribe : pass down events
}

observable4.subscribe { event in
	if let element = event.element {
		print(element) // 요소에 접근 : individual elements in array
	}
}

observable3.subscribe { event in
	if let element = event.element {
		print(element) // 요소에 접근 : whole array
	}
}

// MARK: - access to values
let subscription4 = observable4.subscribe(onNext: { element in
	print(element)
})

// MARK: - dispose observable
// dispose 하는 이유 : memory leak
subscription4.dispose()

// MARK: - create + subscribe + dispose observable

