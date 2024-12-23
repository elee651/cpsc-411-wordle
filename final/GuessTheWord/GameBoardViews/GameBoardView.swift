import SwiftUI

struct GameBoardView: View {
  @ObservedObject var game: GuessingGame
  @State var showResult = false

  var unusedGuesses: Int {
    let remainingGuesses = game.maxGuesses - game.guesses.count
    if remainingGuesses < 0 {
      return 0
    }
    return remainingGuesses
  }

  var body: some View {
    VStack {
      // 1
      ForEach($game.guesses) { guess in
        // 2
        CurrentGuessView(guess: guess, wordLength: game.wordLength)
      }
      // 3
      ForEach(0..<unusedGuesses, id: \.self) { _ in
        // 4
        CurrentGuessView(guess: .constant(Guess()), wordLength: game.wordLength)
      }
    }
    .sheet(isPresented: $showResult) {
      GameResultView(game: game)
    }
    .onChange(of: game.status) { newStatus in
        if newStatus == .lost || newStatus == .won {
            showResult = true
        }
    }
    .padding(10)
  }
}

struct GameBoardView_Previews: PreviewProvider {
  static var previews: some View {
    GameBoardView(game: GuessingGame.inProgressGame())
  }
}
