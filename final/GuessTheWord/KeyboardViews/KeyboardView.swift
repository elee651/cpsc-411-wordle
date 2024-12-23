import SwiftUI

struct KeyboardView: View {
  @ObservedObject var game: GuessingGame
  let keyboard = "QWERTYUIOP|ASDFGHJKL|<ZXCVBNM>"

  var body: some View {
    let lines = keyboard.split(separator: "|")
    VStack {
      ForEach(lines, id: \.self) { line in
        HStack {
          let keyArray = line.map { String($0) }
          ForEach(keyArray, id: \.self) { key in
            KeyButtonView(game: game, key: key)
          }
        }
      }
    }
  }
}

struct KeyboardView_Previews: PreviewProvider {
  static var previews: some View {
    KeyboardView(game: GuessingGame()).padding()
  }
}
