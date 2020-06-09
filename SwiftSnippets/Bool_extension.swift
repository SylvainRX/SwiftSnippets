import Foundation

extension Bool {

  public func map<T>(ifTrue transformIfTrue: () -> T?,
                     ifFalse transformIfFalse: () -> T?) -> T? {
    return self ? transformIfTrue() : transformIfFalse()
  }

  public func map<T>(ifTrue transformIfTrue: () -> T,
                     ifFalse transformIfFalse: () -> T) -> T {
    return self ? transformIfTrue() : transformIfFalse()
  }

  public func map<T>(ifTrue transformIfTrue: () -> T?) -> T? {
    return self ? transformIfTrue() : nil
  }

  public func map<T>(ifFalse transformIfFalse: () -> T?) -> T? {
    return self ? nil : transformIfFalse()
  }
}
