import SwiftUI

struct CurrentGuessView: View {
  @Binding var guess: Guess
  var wordLength: Int

  var unguessedLetters: Int {
    wordLength - guess.word.count
  }

  var body: some View {
    // 1
    GeometryReader { proxy in
      HStack {
        Spacer()
        // 2
        let width = (proxy.size.width - 40) / 5 * 0.8
        // 3
        ForEach(guess.word.indices, id: \.self) { index in
          // 4
          let letter = guess.word[index]
          GuessBoxView(letter: letter, size: width, index: index)
        }
        // 5
        ForEach(0..<unguessedLetters, id: \.self) { _ in
          EmptyBoxView(size: width)
        }
        Spacer()
      }
      .padding(5.0)
      .overlay(
        Group {
          if guess.status == .invalidWord {
            Text("Word not in dictionary.")
              .foregroundColor(.red)
              .background(Color(UIColor.systemBackground).opacity(0.8))
              .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                  guess.status = .pending
                }
              }
          }
        }
      )
    }
  }
}

struct CurrentGuessView_Previews: PreviewProvider {
  static var previews: some View {
    let guessedLetter = GuessedLetter(letter: "S", status: .inPosition)
    let guessedLetter2 = GuessedLetter(letter: "A", status: .notInPosition)
    let guess = Guess(
      word: [guessedLetter, guessedLetter2],
      status: .pending
    )
    CurrentGuessView(
      guess: .constant(guess),
      wordLength: 5
    )
  }
}
