# RxSwift
studying RxSwift - udemy lecture

<br/>

2023-03-19 <br/>
https://github.com/jkim68888/RxSwift/blob/main/HelloRxSwift/HelloRxSwift/RxSwiftPlayground.playground/Contents.swift



> Reactive Programming


## Swift
- Notification Center
- Delegate Pattern
- Grand Central Dispatch
- Closures



## RxSwift

### Observables

<br/>
    
> observable은 이벤트를 생성할 수 있는 대상이다.

- observable == sequence == observable sequence


- Sequence
    
    > observable이 될 수 있는 데이터 타입이다.
     
- events
    - next : 요소 방출 (옵저버블을 구독하고 있는 곳에 데이터 전달)
    - completed : 이벤트 종료 (완료)
    - error : 이벤트에 오류가 있어서 이벤트를 중간에 종료
    
- Subscribe
    
    > 옵저버에 대한 구독
    > 
- Dispose
    
    > 옵저버에 대한 구독 해제
     
    -  dispose하는 이유 : memory leak 방지