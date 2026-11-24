import Playgrounds

#Playground {
    print("introduceWithIfLet")
    introduceWithIfLet(name: "Kim", age: 30)
    introduceWithIfLet(name: nil, age: 30)
    introduceWithIfLet(name:"Lee", age: nil)
    introduceWithIfLet(name: "Park", age: -5)
    introduceWithIfLet(name: nil, age: nil)
    print("introduceWithGuardLet")
    introduceWithGuardLet(name: "Kim", age: 30)
    introduceWithGuardLet(name: nil, age: 30)
    introduceWithGuardLet(name:"Lee", age: nil)
    introduceWithGuardLet(name: "Park", age: -5)
    introduceWithGuardLet(name: nil, age: nil)
}

func introduceWithIfLet(name: String?, age: Int?) {
    if let name {
        if let age {
            if age >= 0 {
                print("안녕하세요, 저는 \(name)이고 \(age)살입니다.")
            } else {
                print("\(name)님의 나이가 올바르지 않습니다.")
            }
        } else {
            print("\(name)님의 나이 정보가 없습니다.")
        }
    } else {
        print("이름 정보가 없습니다.")
    }
}

func introduceWithGuardLet(name: String?, age: Int?) {
    guard let name else {
        print("이름 정보가 없습니다.")
        return
    }
    guard let age else {
        print("\(name)님의 나이 정보가 없습니다.")
        return
    }
    
    guard age >= 0 else {
        print("\(name)님의 나이가 올바르지 않습니다.")
        return
    }
    
    print("안녕하세요, 저는 \(name)이고 \(age)살입니다.")
}
