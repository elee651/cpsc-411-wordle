import SwiftUI

struct GuessBoxView: View {
  var letter: GuessedLetter
  var size: Double
  var index: Int

  var body: some View {
    Text(letter.letter)
      .font(.title)
      // 1
      .foregroundColor(Color(UIColor.systemBackground))
      // 2
      .frame(width: size, height: size)
      // 3
      .background(letter.statusColor)
      // 4
      .cornerRadius(size / 5.0)
  }
}

struct GuessBoxView_Previews: PreviewProvider {
  static var previews: some View {
    let guess = GuessedLetter(letter: "S", status: .inPosition)
    GuessBoxView(letter: guess, size: 50, index: 1)
  }
}
