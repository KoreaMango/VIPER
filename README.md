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



## REF 
https://labs.brandi.co.kr/2018/02/21/kimjh.html

