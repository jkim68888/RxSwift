# RxSwift
studying RxSwift - udemy lecture

<br/>

[2023-03-19](HelloRxSwift/HelloRxSwift/RxSwiftPlayground.playground/Pages/practice1.xcplaygroundpage/Contents.swift) 
<br/>

> Reactive Programming

## Swift
- Notification Center
- Delegate Pattern
- Grand Central Dispatch
- Closures

## RxSwift

### Observables
    
> observable은 이벤트를 생성할 수 있는 대상이다.

- observable == sequence == observable sequence

- Sequence
    
    > observable이 될 수 있는 데이터 타입이다.
     
- events
    - next : 요소 방출 (옵저버블을 구독하고 있는 곳에 데이터 전달)
    - completed : 이벤트 종료 (완료)
    - error : 이벤트에 오류가 있어서 이벤트를 중간에 종료
    
### Subscribe
    
> 옵저버에 대한 구독

### Dispose
    
> 옵저버에 대한 구독 해제
     
-  dispose하는 이유 : memory leak 방지

<br/>

[2023-03-28](HelloRxSwift/HelloRxSwift/RxSwiftPlayground.playground/Pages/Practice2.xcplaygroundpage/Contents.swift) 
<br/>

## Subject

### Publish Subject

> subscribe & emit events (구독 및 이벤트 생성)

[2023-04-16](HelloRxSwift/HelloRxSwift/RxSwiftPlayground.playground/Pages/Practice3.xcplaygroundpage/Contents.swift) 
<br/>

### Behavior Subject

> automatically emit last value

### Replay Subject

> 마지막에 방출된 값을 버퍼사이즈에 따라 replay한다.

### Variable

> string 등의 요소를 할당 가능. 또는 요소를 append하여 배열로 구독 가능.

deprecated -> Behavior Relay로 대체됨.

Behavior Replay는 RxCocoa를 설치해야 사용 가능.

### Behavior Relay

> value를 바로 할당 불가능. accept()로 value를 할당.

## Operators

### Filtering Operators

> ignoreElements, elementAt, filter, skip, skipWhile, skipUntil, take, takeWhile, takeUntil

<!-- ### Transforming Operators

> toArray,  -->