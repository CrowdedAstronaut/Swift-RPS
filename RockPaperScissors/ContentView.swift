//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Ross Phillips on 3/20/22.
//

import SwiftUI

struct ContentView: View {
	let moves = ["✊" ,"👋", "✌️"]
	
	@State private var computerChoice = Int.random(in: 0..<3)
	@State private var shouldWin = Bool.random()
	
	var body: some View {
		VStack {
			Spacer()
			
			Text("Computer has played…")
				.font(.headline)
			Text(moves[computerChoice])
				.font(.system(size: 200))
			
			if shouldWin {
				Text("Which one wins?")
					.foregroundColor(.green)
					.font(.title)
			} else {
				Text("Which one loses?")
					.foregroundColor(.red)
					.font(.title)
			}
			
			HStack {
				ForEach(0..<3) { number in
					Button(moves[number]) {
						// handle move tap
					}
					.font(.system(size: 80))
				}
			}
			
			Spacer()
			
			Text("Score: ???")
				.font(.subheadline)
			
			Spacer()
		}
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

