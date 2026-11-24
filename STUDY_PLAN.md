# iOS 10주 학습 계획

> Android 개발자(3년 7개월차)가 10주 안에 사내 iOS 앱을 유지보수하고, 그 경험을 이력서에 쓰기 위한 학습 계획

## 목차
1. [Quick Start](#quick-start)
2. [학습자 정보](#학습자-정보)
3. [Claude 티칭 가이드](#claude-티칭-가이드)
4. [폴더 구조](#폴더-구조)
5. [10주 커리큘럼](#10주-커리큘럼)
6. [부록 A. Flow ↔ RxSwift 대응표](#부록-a-flow--rxswift-대응표)
7. [부록 B. 작업 후보](#부록-b-작업-후보)
8. [진행 현황](#진행-현황)

---

## Quick Start

1. `ios_study` 폴더에서 Claude Code를 실행한다. 이 폴더의 `CLAUDE.md`가 자동으로 읽혀야 수업 규칙이 적용된다.
   ```bash
   cd ~/Desktop/Private/ios_study && claude
   ```
2. 진행할 일차를 말한다.
   ```text
   1주차 1일 수업 시작
   ```

Claude는 `CLAUDE.md` 규칙에 따라 이 문서를 읽고, [Claude 티칭 가이드](#claude-티칭-가이드)대로 해당 일차의 목표, 핵심 포인트, 실습, 체크포인트에 맞춰 수업을 진행한다.

---

## 학습자 정보

| 항목 | 내용 |
|---|---|
| 경력 | Android 3년 7개월 |
| Android 스택 | Kotlin, XML View, Coroutines/Flow, MVVM + 클린 아키텍처, Repository 패턴, 멀티모듈 |
| iOS 경험 | 없음 |
| 최종 목표 | 사내 iOS 앱 유지보수 작업 2건 이상 + 샘플 앱 1개를 이력서에 쓰기 |
| 학습 시간 | 평일 1.5시간, 토요일 3시간, 일요일은 휴식 또는 보충 |
| 환경 | Mac, iPhone 실기기 |
| 제약 | **샘플 앱과 사내 작업 코드는 AI 코드 생성 없이 직접 작성한다.** 질문은 가능 |

### 대상 프로젝트

| 구분 | 의존성 | 비고 |
|---|---|---|
| 프로젝트 A (주력) | RxSwift 6.6, RxCocoa, RxRelay, RxGesture | RxSwift 기반 MVVM 추정 |
| 프로젝트 B (보조) | Alamofire 5.9, ObjectMapper 4.4, SwiftyJSON 4.3, FSCalendar 2.8 | 반응형 라이브러리 없음, 레거시 구조 추정 |

- 두 프로젝트 모두 CocoaPods를 쓴다.
- UI는 UIKit과 SwiftUI를 혼합해서 쓴다.
- 사내 작업은 작업 요청 없이 **개인 브랜치에 푸시**한다.

### 샘플 앱 스택
UIKit(목록) + SwiftUI(상세) + RxSwift + Alamofire + Codable, MVVM + Repository

---

## Claude 티칭 가이드

이 섹션은 Claude가 수업을 진행할 때 따르는 규칙이다.

### 수업 진행 순서 (평일 1.5시간)

| 순서 | 단계 | 시간 | 내용 |
|---|---|---|---|
| 1 | 복습 | 5분 | 전날 내용 확인 질문 2~3개. 1주차 1일차는 생략 |
| 2 | 개념 설명 | 50분 | 해당 일차의 **핵심 포인트**를 하나씩 설명. 항목마다 Kotlin/Android와 비교 |
| 3 | 실습 | 30분 | 해당 일차의 **실습**을 학습자가 직접 작성. Claude는 문제만 내고 답 코드는 먼저 주지 않음 |
| 4 | 리뷰 | — | 학습자가 붙여넣은 코드를 리뷰. 틀린 부분은 힌트부터 주고, 두 번 막히면 답을 보여줌 |
| 5 | 마무리 | 5분 | **체크포인트** 질문으로 이해도 확인, 오늘 요약 3줄, `notes/` 정리 안내 |

### 토요일 (3시간)
- 직접 만들기 날이다. Claude는 요구사항과 단계별 목표만 주고 코드는 쓰지 않는다.
- 학습자가 막히면 질문에 답하고, 방향을 힌트로 제시한다.

### 사내 작업일 (5~7주차의 작업 구현일)
- Claude는 사내 코드를 대신 작성하지 않는다.
- 원인 분석 방법, 디버깅 도구 사용법, 수정 방향 검토, 학습자가 작성한 코드 리뷰만 한다.
- 작업이 끝나면 `task-logs/TEMPLATE.md`로 작업 기록을 쓰도록 안내한다.

### 설명 원칙
- **Android 비교를 먼저 한다.** "Kotlin의 X는 Swift의 Y와 같다/다르다"로 시작한다.
- **차이점에 시간을 쓴다.** Kotlin과 비슷한 문법은 빠르게 넘기고, 값 타입, ARC, protocol, Optional 바인딩처럼 다른 부분은 깊게 다룬다.
- **개념 설명용 예제 코드는 보여줘도 된다.** 단, 실습 답은 학습자가 먼저 시도한 다음에 보여준다.
- **한 번에 하나씩 설명한다.** 핵심 포인트 하나를 설명하고 짧은 확인 질문을 한 다음 넘어간다.
- **사내 코드와 연결한다.** 3주차 이후에는 "사내 프로젝트에서 이 패턴을 찾아보라"는 과제를 낸다.
- 응답은 한국어, 코드 식별자는 영어, 코드 주석은 한국어로 쓴다.

### 일정 관리
- 수업을 마치면 [진행 현황](#진행-현황)의 해당 일차를 체크할지 학습자에게 묻고, 동의하면 체크한다.
- 하루가 밀리면 일요일에 보충하고, 2일 이상 밀리면 10주차 6일차 예비일을 쓴다.
- 학습자가 이해를 못 했다고 판단되면 다음 일차로 넘어가지 말고 보충 학습을 제안한다.

---

## 폴더 구조

```text
ios_study/
├── CLAUDE.md              # 수업 요청 시 이 문서를 읽도록 하는 Claude 규칙
├── STUDY_PLAN.md          # 이 문서
├── notes/                 # 공부 노트 (예: w1d1.md, 손필기 PDF도 가능)
├── task-logs/             # 사내 작업 기록 (작업 1건 = 파일 1개)
│   └── TEMPLATE.md        # 작업 기록 템플릿
└── sample-app/            # 샘플 앱 프로젝트
```

---

## 10주 커리큘럼

각 일차는 다음 항목으로 구성한다.
- **목표**: 이 날이 끝나면 할 수 있어야 하는 것
- **핵심 포인트**: Claude가 설명할 내용
- **Android 비교**: 비교 설명 기준
- **실습**: 학습자가 직접 작성할 과제
- **체크포인트**: 마무리 질문

---

### 1주차: Swift 기초 (Playground)

#### 1주차 1일차: 환경 세팅과 Optional
- **목표**: Playground에서 코드를 실행하고 Optional을 안전하게 꺼낼 수 있다
- **핵심 포인트**
  - Xcode 설치, Playground 생성과 실행
  - `let`/`var`, 타입 추론, 기본 타입(`Int`, `Double`, `String`, `Bool`), 문자열 보간 `"\(value)"`
  - Optional 선언(`String?`), `if let`, `guard let`, `??`, 강제 언래핑 `!`과 위험성, Optional chaining `?.`
  - `guard let`이 Swift에서 자주 쓰이는 이유(early return)
- **Android 비교**: `val`/`var`, nullable `String?`, `?.let {}`, `?:`, `!!`
- **실습**: 이름과 나이가 Optional인 사용자 정보를 받아 소개 문장을 출력하는 함수를 `if let` 버전과 `guard let` 버전으로 각각 작성
- **체크포인트**: `if let`과 `guard let`은 언제 각각 쓰는가?

#### 1주차 2일차: 컬렉션, 제어문, 함수
- **목표**: 컬렉션을 다루고 argument label이 있는 함수를 쓸 수 있다
- **핵심 포인트**
  - Array, Dictionary, Set 생성과 조작, Dictionary 조회 결과가 Optional인 이유
  - `for-in`, `while`, `switch`(fallthrough 없음, 범위 매칭, 모든 경우 처리 필수)
  - 함수 선언, **argument label**(`func move(to x: Int)`), `_` 생략, 기본값, 여러 값 반환(tuple)
- **Android 비교**: `listOf`/`mapOf`, `when`, named argument
- **실습**: 학생 이름과 점수 Dictionary를 받아 등급별로 분류해서 반환하는 함수 작성(`switch` 범위 매칭 사용)
- **체크포인트**: `func send(to user: String)`를 호출하는 코드는 어떻게 생겼는가?

#### 1주차 3일차: 클로저와 고차 함수
- **목표**: 클로저 문법을 읽고 쓸 수 있다
- **핵심 포인트**
  - 클로저 전체 문법 → 축약 문법 단계별 변환, trailing closure, `$0`
  - `@escaping`이 필요한 경우(비동기 콜백 저장)
  - `map`, `filter`, `compactMap`, `reduce`, `sorted(by:)`
- **Android 비교**: Kotlin 람다, `it`, `mapNotNull`, `fold`
- **실습**: 상품 배열에서 재고가 있는 상품만 골라 가격 내림차순으로 정렬하고 이름만 뽑기. `compactMap`으로 문자열 배열을 `Int` 배열로 변환하기
- **체크포인트**: `@escaping`은 왜 필요한가?

#### 1주차 4일차: struct vs class
- **목표**: 값 타입과 참조 타입의 차이를 설명하고 상황에 맞게 고를 수 있다
- **핵심 포인트**
  - struct는 복사되고, class는 참조가 공유된다(직접 확인하는 예제)
  - `mutating`, `let`으로 선언한 struct는 프로퍼티도 못 바꾸는 이유
  - memberwise initializer, class의 생성자 규칙(designated/convenience 개념만)
  - Swift 표준 타입(Array, String, Dictionary)이 모두 struct라는 점
  - 언제 struct, 언제 class를 쓰는가
- **Android 비교**: Kotlin은 모든 객체가 참조 타입. data class `copy()`와 비교
- **실습**: 같은 `Point`를 struct와 class로 각각 만들고, 복사 후 값을 바꿨을 때 결과 차이를 출력해서 확인
- **체크포인트**: 함수에 Array를 넘기고 함수 안에서 바꾸면 원본은 어떻게 되는가?

#### 1주차 5일차: enum과 Result
- **목표**: associated value가 있는 enum으로 상태를 표현할 수 있다
- **핵심 포인트**
  - 기본 enum, raw value, associated value
  - `switch` 패턴 매칭, `if case let`
  - enum에 메서드와 computed property 추가
  - `Result<Success, Failure>` 사용법
- **Android 비교**: sealed class, enum class, Kotlin `Result`
- **실습**: 화면 상태 `ViewState`(loading, success(데이터), empty, failure(에러 메시지))를 enum으로 만들고, 상태별 안내 문구를 반환하는 함수 작성
- **체크포인트**: sealed class로 만들던 UI 상태를 Swift에서는 어떻게 표현하는가?

#### 1주차 6일차 (토요일 3시간): 직접 만들기
- **목표**: 1주차 문법만으로 작은 모델 계층을 만들고, 실기기에 앱을 설치한다
- **과제 1 (2시간)**: Playground로 할일 관리 모델 만들기
  - `Todo` struct(id, 제목, 마감일 Optional, 우선순위 enum, 완료 여부)
  - `TodoStore`에서 추가, 완료 처리, 우선순위별 필터링, 마감일 정렬
  - 클로저로 필터 조건을 받는 함수 작성
- **과제 2 (1시간)**: Xcode 새 프로젝트(iOS App) 생성, 무료 Apple ID로 서명, iPhone에 설치(개발자 모드 켜기)
- **체크포인트**: 실기기에서 앱이 실행되는가?

---

### 2주차: Swift 심화와 프로젝트 구조

#### 2주차 1일차: protocol과 extension
- **목표**: protocol로 추상화하고 extension으로 기능을 확장할 수 있다
- **핵심 포인트**
  - protocol 선언, 프로퍼티 요구사항(`{ get set }`), 메서드 요구사항
  - extension으로 기존 타입 확장, extension으로 protocol 채택 분리(사내 코드에서 자주 보는 스타일)
  - protocol extension으로 기본 구현 제공
  - protocol 지향 프로그래밍 개념
- **Android 비교**: interface + default method, 확장 함수
- **실습**: `Describable` protocol을 만들고 struct 2개에 채택, protocol extension으로 기본 구현 제공. `String`에 이메일 형식 검증 extension 추가
- **체크포인트**: extension으로 protocol 채택을 분리하면 어떤 장점이 있는가?

#### 2주차 2일차: 제네릭과 에러 처리
- **목표**: 제네릭 함수와 타입을 읽고, 에러를 던지고 처리할 수 있다
- **핵심 포인트**
  - 제네릭 함수, 제네릭 타입, 타입 제약(`<T: Equatable>`)
  - associatedtype 개념, `some`/`any` 차이(개념 수준)
  - `Error` protocol을 따르는 enum, `throws`, `try`/`try?`/`try!`, `do-catch`
- **Android 비교**: 제네릭, 예외, `runCatching`
- **실습**: 제네릭 `Stack<T>` 구현. 잔액 부족, 잘못된 금액 에러를 던지는 출금 함수를 만들고 `do-catch`로 처리
- **체크포인트**: `try?`와 `try!`의 차이는?

#### 2주차 3일차: ARC와 메모리 관리 (가장 중요)
- **목표**: 순환 참조가 생기는 상황을 알아보고 `weak`으로 해결할 수 있다
- **핵심 포인트**
  - ARC가 참조 카운트로 메모리를 관리하는 방식, `deinit`
  - strong, `weak`, `unowned` 차이
  - 두 객체가 서로 참조하는 순환 참조
  - **클로저가 `self`를 캡처하는 순환 참조**, capture list `[weak self]`, `guard let self`
  - delegate 프로퍼티를 `weak var`로 선언하는 이유
- **Android 비교**: GC는 순환 참조도 수거한다. Android의 메모리 누수(Context 누수)와 비교
- **실습**: `Person`과 `Apartment`로 순환 참조를 만들어 `deinit`이 호출되지 않는 것을 확인하고 `weak`으로 해결. 클로저를 저장하는 클래스에서 `[weak self]` 유무에 따른 `deinit` 호출 차이 확인
- **체크포인트**: `[weak self]`를 쓰지 않으면 어떤 일이 생기는가? `unowned`는 언제 위험한가?

#### 2주차 4일차: 접근 제어와 프로퍼티
- **목표**: 사내 코드에 나오는 프로퍼티 문법을 읽을 수 있다
- **핵심 포인트**
  - `private`, `fileprivate`, `internal`(기본값), `public`, `open`
  - stored, computed, `lazy` 프로퍼티, `didSet`/`willSet`
  - `static` 프로퍼티, 싱글톤 패턴(`static let shared`)
  - property wrapper 개념(`@Published`, `@State` 같은 `@` 문법이 무엇인지)
- **Android 비교**: `private`/`internal`, `by lazy`, custom setter, `companion object`, `object`
- **실습**: `didSet`으로 값이 바뀔 때마다 로그를 남기는 설정 클래스, computed property로 전체 이름을 만드는 struct 작성
- **체크포인트**: `fileprivate`과 `private`의 차이는?

#### 2주차 5일차: Xcode 프로젝트 구조
- **목표**: iOS 프로젝트의 파일과 설정이 각각 무슨 역할인지 안다
- **핵심 포인트**
  - Project, Target, Scheme, Build Configuration(Debug/Release)
  - Build Settings, Info.plist, Assets
  - CocoaPods: `Podfile`, `Podfile.lock`, `pod install`, `.xcworkspace`로 열어야 하는 이유
  - AppDelegate, SceneDelegate 역할과 앱 생명주기 상태(active, inactive, background)
- **Android 비교**: Gradle module, buildType/flavor, AndroidManifest, Application, `res/`
- **실습**: 1주차에 만든 프로젝트에서 각 파일을 열어보고 역할을 `notes/`에 정리. AppDelegate/SceneDelegate 메서드에 print를 넣어 앱을 백그라운드로 보냈다가 돌아오며 호출 순서 확인
- **체크포인트**: `.xcodeproj` 대신 `.xcworkspace`를 열어야 하는 경우는?

#### 2주차 6일차 (토요일 3시간): 사내 프로젝트 빌드
- **목표**: 사내 프로젝트 A, B를 실기기에서 실행하고 구조를 파악한다
- **과제**
  - A, B 모두 `pod install` 후 실기기에서 실행(서명, 빌드 에러가 나면 원인을 기록)
  - 각 프로젝트에서 다음을 `notes/`에 메모
    - 폴더 구조와 모듈 구성
    - 화면 목록
    - Storyboard와 코드 UI 비율, SwiftUI 사용 여부
    - 최소 지원 iOS 버전(`IPHONEOS_DEPLOYMENT_TARGET`)
- **체크포인트**: 두 앱이 실기기에서 실행되는가?

---

### 3주차: UIKit

#### 3주차 1일차: ViewController 생명주기
- **목표**: ViewController 생명주기와 Storyboard 연결 방식을 안다
- **핵심 포인트**
  - `loadView`, `viewDidLoad`, `viewWillAppear`, `viewDidAppear`, `viewWillDisappear`, `viewDidDisappear`, `deinit`
  - UIView 계층(superview, subviews), frame과 bounds
  - Storyboard, XIB, `@IBOutlet`, `@IBAction`, Outlet 연결이 끊겼을 때 나는 크래시
- **Android 비교**: Activity/Fragment 생명주기, `findViewById`/ViewBinding
- **실습**: 화면 2개를 만들고 생명주기 메서드마다 print를 넣어 화면 전환 시 호출 순서 확인. Storyboard에서 버튼을 Outlet/Action으로 연결
- **체크포인트**: Fragment의 `onViewCreated`에 하던 작업은 어디서 하는가? 화면이 다시 보일 때마다 실행할 코드는?

#### 3주차 2일차: AutoLayout
- **목표**: 코드와 Storyboard 양쪽의 AutoLayout을 읽고 쓸 수 있다
- **핵심 포인트**
  - 제약조건 개념(위치와 크기가 모두 결정되어야 함)
  - 코드로 쓰는 anchor 방식, `translatesAutoresizingMaskIntoConstraints = false`
  - UIStackView, Safe Area
  - Content Hugging, Compression Resistance 개념
  - Storyboard에서 제약조건 확인하는 법, 제약 충돌 로그 읽는 법
- **Android 비교**: ConstraintLayout, LinearLayout, `wrap_content`
- **실습**: 프로필 카드(이미지, 이름, 설명, 버튼)를 코드 AutoLayout으로 구현. 같은 화면을 UIStackView로 다시 구현
- **체크포인트**: `translatesAutoresizingMaskIntoConstraints`를 `false`로 하지 않으면 어떻게 되는가?

#### 3주차 3일차: UITableView
- **목표**: UITableView로 목록을 보여줄 수 있다
- **핵심 포인트**
  - DataSource(`numberOfRowsInSection`, `cellForRowAt`), Delegate(`didSelectRowAt`)
  - **Delegate 패턴** 자체의 개념(iOS 전반에서 쓰는 방식)
  - 셀 등록과 재사용(`dequeueReusableCell`), 커스텀 셀, `prepareForReuse`
  - 섹션, `reloadData`
- **Android 비교**: RecyclerView, Adapter, ViewHolder, `onBindViewHolder`
- **실습**: 연락처 목록(섹션별 그룹), 커스텀 셀, 탭하면 이름 출력
- **체크포인트**: 셀 재사용 때문에 생기는 버그(이전 셀 데이터가 남는 현상)는 어떻게 막는가?

#### 3주차 4일차: UICollectionView
- **목표**: UICollectionView와 DiffableDataSource를 읽고 쓸 수 있다
- **핵심 포인트**
  - UICollectionView와 FlowLayout
  - DiffableDataSource, Snapshot
  - Compositional Layout 개념
  - 사내 프로젝트가 TableView와 CollectionView 중 무엇을 주로 쓰는지 확인하는 과제
- **Android 비교**: RecyclerView + GridLayoutManager, ListAdapter + DiffUtil
- **실습**: 사진 그리드(2열)를 FlowLayout으로 구현하고, DiffableDataSource로 항목 추가/삭제
- **체크포인트**: DiffableDataSource는 DiffUtil과 무엇이 같은가?

#### 3주차 5일차: 화면 전환
- **목표**: push/pop, 모달 present로 화면을 전환하고 데이터를 주고받을 수 있다
- **핵심 포인트**
  - UINavigationController, `pushViewController`, `popViewController`
  - `present`, `dismiss`, modalPresentationStyle
  - 다음 화면으로 데이터 전달(프로퍼티, 생성자 주입)
  - 이전 화면으로 결과 전달(delegate, 클로저)
  - Storyboard segue 개념(사내 코드 읽기용)
- **Android 비교**: Navigation Component, Intent extra, Fragment Result API
- **실습**: 목록 → 상세 → 수정 화면을 만들고, 수정 결과를 클로저로 목록에 반영
- **체크포인트**: delegate와 클로저 중 결과 전달에 무엇을 쓸지 어떻게 고르는가?

#### 3주차 6일차 (토요일 3시간): 직접 만들기
- **목표**: UIKit만으로 목록 → 상세 미니 앱을 만들고, 사내 화면 하나를 추적한다
- **과제 1 (2시간)**: 미니 앱
  - 하드코딩한 데이터로 목록 화면(UITableView 또는 UICollectionView)
  - 탭하면 상세 화면 push
  - 상세에서 즐겨찾기를 누르면 목록에 반영(delegate 또는 클로저)
  - UI는 코드 AutoLayout으로 작성
- **과제 2 (1시간)**: 사내 프로젝트 A의 진입점(AppDelegate/SceneDelegate)에서 첫 화면까지, 첫 화면에서 다음 화면까지의 흐름을 `notes/`에 정리
- **체크포인트**: 사내 앱의 첫 화면은 어떻게 띄워지는가?

---

### 4주차: RxSwift 집중

#### 4주차 1일차: 메인 스레드와 콜백
- **목표**: 메인 스레드 규칙과 completion handler 패턴을 안다
- **핵심 포인트**
  - UI는 메인 스레드에서만 갱신해야 하는 규칙, Main Thread Checker
  - GCD: `DispatchQueue.main.async`, `DispatchQueue.global().async`
  - completion handler 패턴(`completion: @escaping (Result<T, Error>) -> Void`)
  - Alamofire 기본 요청 형태
- **Android 비교**: `Dispatchers.Main`/`IO`, `withContext`, 콜백 인터페이스
- **실습**: 프로젝트 B에서 Alamofire 호출 코드 하나를 골라 요청 → 응답 → UI 반영 흐름을 주석으로 설명. 백그라운드에서 UI를 갱신하는 코드를 일부러 만들어 경고 확인
- **체크포인트**: completion 클로저 안에서 UI를 갱신할 때 주의할 점은?

#### 4주차 2일차: RxSwift 기본
- **목표**: Observable을 만들고 구독하고 해제할 수 있다
- **핵심 포인트**
  - Observable, 이벤트 3종(next, error, completed)
  - `Single`, `Completable`, `Maybe`
  - `subscribe(onNext:onError:onCompleted:)`, `Disposable`, `DisposeBag`
  - 구독 클로저 안의 `[weak self]`
- **Android 비교**: [부록 A](#부록-a-flow--rxswift-대응표) 참고. `collect`, Job 취소
- **실습**: Playground에 RxSwift를 추가(또는 미니 앱에 CocoaPods로 설치)하고, 숫자 Observable을 만들어 구독. `Single`로 가짜 API 호출 함수 작성
- **체크포인트**: DisposeBag은 언제 구독을 해제하는가?

#### 4주차 3일차: Relay와 연산자
- **목표**: Relay로 상태를 관리하고 주요 연산자를 쓸 수 있다
- **핵심 포인트**
  - `PublishSubject`, `BehaviorSubject`와 `PublishRelay`, `BehaviorRelay` 차이
  - `map`, `filter`, `flatMap`, `flatMapLatest`, `debounce`, `distinctUntilChanged`
  - `combineLatest`, `merge`, `withLatestFrom`
  - Marble diagram 읽는 법
- **Android 비교**: `StateFlow`, `SharedFlow`, Flow 연산자
- **실습**: 아이디와 비밀번호 `BehaviorRelay`를 `combineLatest`로 묶어 로그인 버튼 활성화 여부 계산. `flatMap`과 `flatMapLatest` 결과 차이 확인
- **체크포인트**: UI 상태에 Subject 대신 Relay를 쓰는 이유는?

#### 4주차 4일차: Scheduler와 RxCocoa
- **목표**: RxCocoa로 UI와 데이터를 바인딩할 수 있다
- **핵심 포인트**
  - `observe(on: MainScheduler.instance)`, `subscribe(on:)`
  - RxCocoa: `button.rx.tap`, `textField.rx.text`, `bind(to:)`
  - `Driver`, `Signal`, `drive`, `asDriver(onErrorJustReturn:)`
  - `tableView.rx.items`, `modelSelected`
  - RxGesture 사용법(`view.rx.tapGesture()`)
- **Android 비교**: `flowOn`, `collectLatest`, `repeatOnLifecycle`
- **실습**: 로그인 화면을 UIKit으로 만들고, 3일차 로직을 RxCocoa로 실제 UI에 바인딩
- **체크포인트**: Driver는 Observable과 무엇이 다른가?

#### 4주차 5일차: 사내 ViewModel 분석
- **목표**: 프로젝트 A의 MVVM 구조를 설명할 수 있다
- **핵심 포인트**
  - Input/Output(`transform`) 패턴
  - ViewController가 ViewModel에 입력을 넘기고 출력을 바인딩하는 흐름
  - `disposeBag` 위치, `subscribe` 안의 `[weak self]` 사용 여부
- **Android 비교**: ViewModel의 이벤트 함수 + StateFlow 노출 방식
- **실습**: 프로젝트 A에서 ViewModel 하나를 골라 Input → 처리 → Output → View 흐름을 다이어그램으로 그려 `notes/`에 저장
- **체크포인트**: 이 ViewModel이 Android였다면 어떻게 생겼을지 설명할 수 있는가?

#### 4주차 6일차 (토요일 3시간): 직접 만들기
- **목표**: 미니 앱에 RxSwift MVVM을 적용한다
- **과제**
  - 3주차 미니 앱에 검색창 추가
  - `searchBar.rx.text` → `debounce` → `distinctUntilChanged` → `flatMapLatest`(가짜 API) → `tableView.rx.items`
  - ViewController에서 로직을 ViewModel로 분리(Input/Output 구조)
- **체크포인트**: ViewController에 비즈니스 로직이 남아 있지 않은가?

---

### 5주차: 네트워크, 아키텍처, 첫 작업

#### 5주차 1일차: Alamofire와 JSON 파싱
- **목표**: 사내 Alamofire 네트워크 코드를 읽고 Codable 모델로 API를 호출할 수 있다
- **핵심 포인트**
  - Alamofire `AF.request`, 파라미터 인코딩, 헤더, `validate()`, `responseDecodable`/`responseJSON`
  - `RequestInterceptor`로 공통 헤더와 토큰 갱신 처리(사내 코드에 있으면 함께 읽기)
  - Codable, `CodingKeys`, 디코딩 에러 처리
  - ObjectMapper `Mappable`, SwiftyJSON은 사내 코드 읽기 수준으로만
- **Android 비교**: Retrofit + OkHttp Interceptor, Gson/Moshi, `@SerializedName`
- **실습**: 공개 API(예: GitHub API) 응답을 Codable 모델로 정의하고 `AF.request`로 호출. 프로젝트 B의 ObjectMapper 모델 하나를 읽고 Codable이었다면 어떻게 생겼을지 비교
- **체크포인트**: ObjectMapper보다 Codable을 쓰면 무엇이 좋은가?

#### 5주차 2일차: Moya와 RxMoya
- **목표**: Moya로 API 계층을 정의하고 RxMoya로 호출할 수 있다
- **핵심 포인트**
  - Moya는 Alamofire를 감싼 추상화 계층이다
  - `TargetType`(baseURL, path, method, task, headers)으로 API를 enum 하나에 정의
  - `MoyaProvider`로 요청, Plugin(로깅, 공통 헤더)
  - **RxMoya**: `provider.rx.request(_:)`가 `Single<Response>`를 반환, `map(_:)`으로 Codable 디코딩
  - `AF.request`를 직접 쓸 때와 Moya를 쓸 때의 차이(API 정의 위치, 테스트용 stub 지원)
- **Android 비교**: `TargetType` enum은 Retrofit의 API interface, RxMoya는 Retrofit + RxJava 반환 타입과 같은 역할
- **실습**: 1일차에 호출한 API를 Moya `TargetType` + RxMoya로 다시 작성하고, `AF.request` 방식과 코드 구조 비교
- **체크포인트**: `AF.request`를 직접 쓰는 대신 Moya를 쓰면 무엇이 좋은가?

#### 5주차 3일차: 사내 코드 구조 추적 (데이터 흐름과 객체 생성)
- **목표**: 두 사내 프로젝트의 데이터 흐름과 객체가 만들어지고 연결되는 방식을 설명할 수 있다
- **핵심 포인트**
  - A: API → (Repository) → ViewModel → Rx 바인딩 → View
  - B: API → ViewController 콜백 → View
  - 객체 생성 방식: 생성자 주입, 싱글톤, 서비스 로케이터, Coordinator 사용 여부
  - Storyboard 기반 화면 생성(`instantiateViewController`)
  - Xcode 코드 탐색: Jump to Definition, Find Call Hierarchy, 브레이크포인트
- **Android 비교**: Hilt/Koin, Navigation graph
- **실습**: A와 B에서 각각 화면 하나를 골라 API 호출부터 화면 표시까지 흐름을 `notes/`에 정리. A에서는 ViewModel이 어디서 생성되어 ViewController에 전달되는지도 함께 추적
- **체크포인트**: 두 프로젝트의 구조 차이를 한 문장으로 설명할 수 있는가? 사내 앱에 새 화면을 하나 추가한다면 어떤 파일들을 만들어야 하는가?

#### 5주차 4일차: 메모리 디버깅과 작업 후보 찾기
- **목표**: 디버깅 도구로 메모리 누수를 찾을 수 있다
- **핵심 포인트**
  - Memory Graph Debugger 사용법
  - Instruments Leaks, Allocations 기본 사용법
  - `deinit`에 print를 넣어 화면 해제 여부를 확인하는 방법
- **Android 비교**: LeakCanary, Android Studio Memory Profiler
- **실습**: 프로젝트 A의 주요 화면을 열고 닫으며 `deinit` 호출 여부 확인. 작업 후보를 [부록 B](#부록-b-작업-후보) 기준으로 2~3개 정리
- **체크포인트**: 해제되지 않는 ViewController를 찾았는가?

#### 5주차 5일차: 첫 작업 계획
- **목표**: 첫 작업의 범위와 수정 계획을 확정한다
- **핵심 포인트**
  - 영향 범위 분석(이 코드를 쓰는 곳 찾기)
  - 브랜치 생성, 커밋 메시지 규칙 확인
- **실습**: `task-logs/TEMPLATE.md`를 복사해 첫 작업 기록 파일 생성, 1번(문제)과 2번(원인 분석) 작성
- **체크포인트**: 수정했을 때 영향을 받는 화면을 모두 알고 있는가?

#### 5주차 6일차 (토요일 3시간): 첫 작업 구현
- **목표**: 프로젝트 A에서 첫 작업을 구현한다
- **과제**: 계획대로 수정. Claude는 코드를 대신 쓰지 않고 방향 검토와 리뷰만 한다
- **체크포인트**: 수정 후 문제가 재현되지 않는가?

---

### 6주차: 첫 작업 마무리와 SwiftUI

#### 6주차 1일차: SwiftUI 기초
- **목표**: SwiftUI 화면 코드를 읽을 수 있다
- **핵심 포인트**
  - `View` protocol, `body`, Modifier 체인과 순서의 의미
  - `VStack`, `HStack`, `ZStack`, `Spacer`, `List`, `ForEach`
  - Preview 사용법
  - 선언형 UI 개념(XML View와 다른 점)
- **Android 비교**: Jetpack Compose(학습자는 XML 위주이므로 선언형 개념부터 설명)
- **실습**: 3주차 프로필 카드를 SwiftUI로 다시 만들기. 사내에 SwiftUI 화면이 있으면 하나 읽어보기
- **체크포인트**: Modifier 순서를 바꾸면 왜 결과가 달라지는가?

#### 6주차 2일차: SwiftUI 상태 관리
- **목표**: SwiftUI의 상태 관련 property wrapper를 구분해서 쓸 수 있다
- **핵심 포인트**
  - `@State`, `@Binding`
  - `ObservableObject`, `@Published`, `@StateObject`, `@ObservedObject`, `@EnvironmentObject`
  - `@StateObject`와 `@ObservedObject` 차이(소유권)
- **Android 비교**: 상태 hoisting, ViewModel 소유 범위
- **실습**: 카운터와 토글이 있는 설정 화면, 자식 View에 `@Binding`으로 상태 전달
- **체크포인트**: `@StateObject` 대신 `@ObservedObject`를 쓰면 어떤 문제가 생길 수 있는가?

#### 6주차 3일차: UIKit과 SwiftUI 연동
- **목표**: 혼합 구조에서 두 프레임워크가 연결되는 방식을 안다
- **핵심 포인트**
  - `UIHostingController`로 UIKit 안에 SwiftUI 화면 넣기
  - `UIViewRepresentable`, `UIViewControllerRepresentable`로 SwiftUI 안에 UIKit 넣기
  - 두 세계 사이의 데이터 전달
- **Android 비교**: `ComposeView`, `AndroidView`
- **실습**: 3주차 미니 앱의 상세 화면을 SwiftUI로 바꾸고 `UIHostingController`로 push. 사내 코드에서 연결 지점 찾기
- **체크포인트**: 사내 앱에서 SwiftUI 화면은 어떻게 띄워지는가?

#### 6주차 4일차: 첫 작업 검증
- **목표**: 첫 작업을 검증하고 마무리한다
- **과제**
  - 셀프 리뷰(불필요한 변경, 디버그 print 제거)
  - 실기기 테스트, 영향받는 다른 화면 확인
  - 메모리 관련 작업이면 Memory Graph Debugger로 재확인
- **체크포인트**: 작업 전후 차이를 증명할 수 있는가?

#### 6주차 5일차: 첫 작업 기록
- **목표**: 첫 작업 기록을 완성하고 브랜치를 푸시한다
- **과제**: 작업 기록의 3~7번 작성, 브랜치 푸시
- **체크포인트**: 이 작업을 면접에서 2분 안에 설명할 수 있는가?

#### 6주차 6일차 (토요일 3시간): 샘플 앱 시작
- **목표**: 샘플 앱의 기반을 만든다
- **과제**
  - `sample-app/`에 Xcode 프로젝트 생성, CocoaPods로 RxSwift, RxCocoa, Alamofire 설치
  - 폴더 구조(Presentation, Domain, Data) 구성
  - Codable 모델, Alamofire 기반 API 클라이언트, Repository protocol과 구현체
- **샘플 앱 주제**: GitHub 저장소 검색(목록 + 상세 + 즐겨찾기). 학습자가 원하면 다른 주제로 바꿔도 된다
- **체크포인트**: API를 호출해서 모델로 디코딩되는가?

---

### 7주차: 두 번째 작업과 테스트

#### 7주차 1일차: 두 번째 작업 분석
- **목표**: 두 번째 작업을 고르고 원인을 분석한다
- **과제**: 프로젝트 B 위주로 [부록 B](#부록-b-작업-후보)에서 고르기. 작업 기록 파일 생성, 1~2번 작성
- **체크포인트**: 첫 작업과 다른 영역(다른 프로젝트나 다른 기술)인가?

#### 7주차 2일차: XCTest
- **목표**: ViewModel 단위 테스트를 쓸 수 있다
- **핵심 포인트**
  - XCTest 기본(`XCTestCase`, `setUp`, `XCTAssertEqual`)
  - protocol로 Mock Repository 만들기
  - 비동기 테스트(`XCTestExpectation`)
  - RxSwift 테스트 도구(`RxBlocking`, `RxTest`) 개념
- **Android 비교**: JUnit, MockK, `runTest`, Turbine
- **실습**: 4주차 로그인 ViewModel의 버튼 활성화 로직 테스트 작성
- **체크포인트**: protocol 기반 설계가 테스트에 왜 유리한가?

#### 7주차 3일차: 두 번째 작업 구현 (1)
- **과제**: 두 번째 작업 구현. Claude는 방향 검토와 리뷰만 한다

#### 7주차 4일차: 두 번째 작업 구현 (2)
- **과제**: 두 번째 작업 구현 계속

#### 7주차 5일차: 두 번째 작업 마무리
- **과제**: 검증, 작업 기록 3~7번 작성, 브랜치 푸시
- **체크포인트**: 이 작업을 면접에서 2분 안에 설명할 수 있는가?

#### 7주차 6일차 (토요일 3시간): 샘플 앱 목록 화면
- **목표**: 목록 화면을 RxSwift MVVM으로 구현한다
- **과제**
  - UICollectionView 기반 검색 결과 목록(코드 AutoLayout)
  - ViewModel(Input: 검색어, 셀 선택 / Output: 목록, 로딩 상태)
  - RxCocoa로 바인딩
- **체크포인트**: 검색어를 입력하면 결과가 목록에 나오는가?

---

### 8주차: 샘플 앱 기능

#### 8주차 1일차: SwiftUI 화면 구성
- **목표**: 상세 화면을 만들 수 있을 만큼 SwiftUI를 익힌다
- **핵심 포인트**: NavigationStack, sheet, `AsyncImage`, `ScrollView`, 화면 상태에 따른 분기
- **실습**: 샘플 앱 상세 화면의 레이아웃 초안을 SwiftUI로 작성
- **체크포인트**: 상세 화면 데이터는 어떻게 전달받을 것인가?

#### 8주차 2일차: 화면 상태 처리
- **목표**: 로딩, 에러, 빈 화면을 일관된 방식으로 처리한다
- **핵심 포인트**: enum 상태 + `BehaviorRelay`, 에러 메시지 매핑, 재시도
- **Android 비교**: sealed class UiState + StateFlow
- **실습**: 샘플 앱 목록 화면에 로딩/에러/빈 화면 상태 적용
- **체크포인트**: 네트워크를 끄고 실행했을 때 에러 화면이 나오는가?

#### 8주차 3일차: 로컬 저장
- **목표**: UserDefaults로 간단한 데이터를 저장할 수 있다
- **핵심 포인트**: UserDefaults, Codable 객체 저장, Core Data/SwiftData는 개념만
- **Android 비교**: SharedPreferences/DataStore, Room
- **실습**: 즐겨찾기 저장소(`FavoriteRepository`) 구현
- **체크포인트**: 앱을 껐다 켜도 즐겨찾기가 유지되는가?

#### 8주차 4일차: 이미지 로딩
- **목표**: 목록에서 이미지를 효율적으로 보여줄 수 있다
- **핵심 포인트**: URLSession으로 이미지 다운로드, `NSCache`, 셀 재사용 시 이미지 꼬임 문제, Kingfisher 개념
- **Android 비교**: Glide/Coil
- **실습**: 목록 셀에 아바타 이미지 표시(캐시 적용)
- **체크포인트**: 빠르게 스크롤해도 이미지가 엉뚱한 셀에 나오지 않는가?

#### 8주차 5일차: 페이지네이션
- **목표**: 스크롤 끝에서 다음 페이지를 불러오는 방식을 설계한다
- **핵심 포인트**: `collectionView.rx.contentOffset` 또는 `willDisplayCell`로 끝 감지, 중복 요청 방지
- **Android 비교**: Paging 3, `addOnScrollListener`
- **실습**: 페이지네이션 로직 설계를 `notes/`에 정리(구현은 9주차)
- **체크포인트**: 빠르게 스크롤할 때 같은 페이지를 두 번 요청하지 않으려면?

#### 8주차 6일차 (토요일 3시간): 샘플 앱 상세 화면
- **목표**: SwiftUI 상세 화면과 즐겨찾기를 완성한다
- **과제**
  - 상세 화면을 SwiftUI로 구현하고 `UIHostingController`로 push
  - 상세 화면에서 즐겨찾기 토글, 목록에 반영
- **체크포인트**: UIKit 목록과 SwiftUI 상세 사이의 데이터가 동기화되는가?

---

### 9주차: 샘플 앱 완성

#### 9주차 1일차: 페이지네이션 구현
- **과제**: 8주차 5일차 설계대로 페이지네이션 구현
- **체크포인트**: 끝까지 스크롤하면 다음 페이지가 붙는가?

#### 9주차 2일차: 샘플 앱 테스트
- **과제**: 목록 ViewModel과 즐겨찾기 Repository 단위 테스트 작성
- **체크포인트**: 주요 로직이 테스트로 검증되는가?

#### 9주차 3일차: 메모리 점검
- **과제**: Memory Graph Debugger와 Instruments로 샘플 앱 누수 점검, 발견하면 수정
- **체크포인트**: 모든 화면이 닫힐 때 `deinit`이 호출되는가?

#### 9주차 4일차: 세 번째 작업 (선택)
- **과제**: 여유가 있으면 사내 세 번째 작업 후보 분석. 일정이 밀렸으면 보충일로 쓴다

#### 9주차 5일차: README 작성
- **과제**: `sample-app/README.md` 작성
  - 스크린샷, 주요 기능
  - 아키텍처 다이어그램(Presentation, Domain, Data)
  - 기술 선택 이유(RxSwift, Codable, UIKit + SwiftUI 혼합)
  - Android 구조와 비교
- **체크포인트**: README만 보고 앱의 구조를 이해할 수 있는가?

#### 9주차 6일차 (토요일 3시간): 샘플 앱 공개
- **과제**: 코드 정리(미사용 코드, 디버그 print 제거), GitHub 공개 저장소에 업로드
- **체크포인트**: 처음 보는 사람이 clone해서 `pod install` 후 실행할 수 있는가?

---

### 10주차: 이력서와 면접 준비

#### 10주차 1일차: 이력서 작성
- **과제**: `task-logs/`의 "이력서 한 줄"과 샘플 앱을 바탕으로 이력서 iOS 항목 작성
- **원칙**: 사내 작업은 "사내 iOS 앱 개선 작업(개인 브랜치, 미배포)"처럼 사실대로 쓴다

#### 10주차 2일차: 면접 질문 (Swift)
- **진행**: Claude가 면접관 역할로 질문하고 학습자가 답한 뒤 피드백
- **범위**: Optional, struct vs class, ARC와 순환 참조, protocol, 클로저 캡처

#### 10주차 3일차: 면접 질문 (UIKit)
- **범위**: ViewController 생명주기, AutoLayout, 셀 재사용, 메인 스레드, Delegate 패턴

#### 10주차 4일차: 면접 질문 (RxSwift와 아키텍처)
- **범위**: Relay vs Subject, DisposeBag, Driver, `flatMapLatest`, MVVM Input/Output, Android와 iOS 비교

#### 10주차 5일차: 모의 면접
- **진행**: 학습자가 자신의 작업 기록을 바탕으로 작업을 설명하고, Claude가 꼬리 질문
- **체크포인트**: "왜 그렇게 고쳤는가"에 막힘 없이 답할 수 있는가?

#### 10주차 6일차 (토요일 3시간): 예비일
- **과제**: 밀린 일정 보충, 약한 부분 복습

---

## 부록 A. Flow ↔ RxSwift 대응표

| Kotlin Flow | RxSwift | 비고 |
|---|---|---|
| `Flow` (cold) | `Observable` | |
| `suspend fun` 단건 결과 | `Single` | API 호출에 주로 사용 |
| `StateFlow` | `BehaviorRelay` | 현재값을 가짐, `.value`로 읽음 |
| `SharedFlow` | `PublishRelay` | 현재값 없음 |
| `collect` | `subscribe` | |
| Job 취소, `viewModelScope` | `DisposeBag` | bag이 해제되면 구독도 해제 |
| `flowOn`, `Dispatchers.Main` | `subscribe(on:)`, `observe(on: MainScheduler.instance)` | |
| `flatMapLatest` | `flatMapLatest` | 검색 API에 자주 씀 |
| `combine` | `combineLatest` | |
| 메인 스레드 + 에러 없는 StateFlow | `Driver` (RxCocoa) | UI 바인딩용 |

> Relay는 Subject와 달리 error/completed 이벤트로 끝나지 않는다. UI 상태는 대부분 Relay로 관리한다.

---

## 부록 B. 작업 후보

| 순위 | 프로젝트 | 후보 | 이력서 효과 |
|---|---|---|---|
| 1 | A | Rx 구독 메모리 누수 수정(`subscribe` 안의 `self` 강한 참조, 잘못 쓴 `disposeBag`, `deinit`이 호출되지 않는 ViewController) | 원인 분석 과정을 설명하기 좋음 |
| 2 | B | UI 버그나 레이아웃 깨짐 수정(작은 화면, 다크모드, 다이나믹 타입) | 결과가 눈에 보임 |
| 3 | B | 모델 하나를 ObjectMapper에서 Codable로 옮기기(영향 범위는 작게) | 레거시 개선 경험 |
| 4 | A | ViewModel 단위 테스트 추가 | 테스트 경험 |

---

## 진행 현황

| 주차 | 1일 | 2일 | 3일 | 4일 | 5일 | 6일 (토) |
|---|---|---|---|---|---|---|
| 1주차 | [x] 2026-11-24 (화) | [ ] | [ ] | [ ] | [ ] | [ ] |
| 2주차 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| 3주차 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| 4주차 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| 5주차 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| 6주차 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| 7주차 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| 8주차 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| 9주차 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
| 10주차 | [ ] | [ ] | [ ] | [ ] | [ ] | [ ] |
