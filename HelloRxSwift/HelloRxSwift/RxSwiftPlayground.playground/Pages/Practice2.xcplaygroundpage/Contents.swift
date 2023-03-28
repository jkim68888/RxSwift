import UIKit
import RxSwift

// MARK: - create + subscribe + dispose observable
let disposeBag = DisposeBag()

Observable.of("A", "B", "C")
	.subscribe {
		print($0)
	}.disposed(by: disposeBag)

Observable<String>.create { observer in
	observer.onNext("A")
	observer.onCompleted()
	observer.onNext("?")
	return Disposables.create()
}.subscribe {
	print($0)
} onError: {
	print($0)
} onCompleted: {
	print("Completed")
} onDisposed: {
	print("Disposed")
}.disposed(by: disposeBag)

// MARK: - Publish Subject
let subject = PublishSubject<String>()

subject.onNext("Issue 1")

subject.subscribe { event in
	print(event)
}

subject.onNext("Issue 2")
subject.onNext("Issue 3")

//subject.dispose()

subject.onCompleted()

subject.onNext("Issue 4")
