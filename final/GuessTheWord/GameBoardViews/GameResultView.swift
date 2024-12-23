import SwiftUI

struct GameResultView: View {
    @ObservedObject var game: GuessingGame

    var body: some View {
        VStack {
            if game.status == .lost {
                Text("You lost! The correct word was:")
                    .font(.headline)
                Text(game.targetWord)
                    .font(.largeTitle)
                    .foregroundColor(.red)
            } else if game.status == .won {
                Text("Congratulations! You guessed the word!")
                    .font(.headline)
            }
          Spacer()
            }
            .padding()
        }
    
}
