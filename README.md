# VIPER 
## 모습
<img width="675" alt="스크린샷 2022-11-19 오후 8 56 37" src="https://user-images.githubusercontent.com/57595198/202849619-6ca953ae-714d-484b-8fcc-c971320eeb91.png">



## 설명
### V (View)
- Presenter 에서 어떻게 보여줘야 할지 요청대로 디스플레이하고,
- 사용자의 입력을 받으면 다시 Presenter로 넘깁니다.  


### I (Interactor)
- 모델 객체를 조작하는, 
- 어떤 행동(Use case)에 따라 모델 객체(Entity)를 조작하는 로직, 
- 작업이 완료되어도 View에 아무런 영향 없이 오로지 데이터 작업,


### P (Presenter)
- 데이터를 Interactor에서 가져오고,
- 언제 View에 보여줄지 결정,
- View에 보여주기 전 내용을 준비하는 로직,
- View/ViewController, Inractor, Router와 상호작용,
- Interactor로 부터 조작된 데이터를 가져오고,
- 디스플레이하기 위해 데이터들을 준비한 다음 View/ViewController에 보냅니다. 
- 화면 전환을 [언제] 하는지 담당,


### E (Entity)
- 모델 객체,
- 어떤 모델의 속성들만 있는,


### R (Router / Wireframe)
- 화면 전환을 담당,
- 화면 전환 애니메이션을 구현,
- ViewController를 생성하여 Presenter와 연결
- 화면 전환을 [어떻게] 하는지 담당,

## 장점
- 더 많은 추상화 및 향후 확장성 옵션.
- 보다 안정적이고 오류 발생 가능성이 적은 보다 엄격한 아키텍처.
- 개발 초기 단계는 느릴 수 있지만, 흐름을 이해한 후에는 다른 아키텍처를 구현하는 것만큼 쉽고 빠릅니다.
- 단일 책임 원칙으로 인해 개발자가 어디에 무엇이 있는지 더 쉽게 이해할 수 있습니다.

## 단점
- 많은 상용 코드를 생성하여 초기 개발 단계를 더 느리게 만듭니다. 구성 요소 간에 데이터와 작업을 전송하는 것은 프로토콜과 델리게이트에 매우 의존적입니다.
- 실제 시나리오에 적용되기 전에는 작동 방식을 완전히 이해하기가 어렵습니다.

## 추가
프로젝트뿐만 아니라 개발자의 전문성 수준에 가장 적합한 접근 방식을 결정하는 것은 경영진과 협력하여 개발 팀에 달려 있습니다. VIPER는 주니어 레벨 개발자들에게는 적합하지 않다. 일부 구성은 스위프트 프로그래밍 언어에 대한 더 많은 지식을 필요로 할 수 있다.

## REF 
https://labs.brandi.co.kr/2018/02/21/kimjh.html
https://www.pixelmatters.com/blog/tutorial-part-1-viper-design-pattern-what-when-why-and-how
