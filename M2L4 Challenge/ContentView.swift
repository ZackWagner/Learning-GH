//
//  ContentView.swift
//  M2L4 Challenge
//
//  Created by Christopher Ching on 2020-12-24.
//

import SwiftUI

struct ContentView: View {
    
    // Stores our generated numbers
    @State var numbers = [Int]()
    
    var body: some View {
        
        VStack {
            
            // For each number, create a text element
            List(numbers, id: \.self) { num in
                
                Text(String(num))
            }
            HStack(spacing: 10.0) {
                Button("Generate") {
                    
                    // Declare a variable outside the scope of the loop
                    var randNumber = 0
                    
                    // Loop
                    repeat {
                        
                        // Randomize a number
                        randNumber = Int.random(in: 1...10)
                        
                        // Add it to our array
                        numbers.append(randNumber)
                        
                        // If it's not a 7, then loop
                    } while randNumber != 7
                    
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                
                Button("Add +1") {
                    
                    // Check if there are items in the array
                    if numbers.count == 0 {
                        
                        // The return keyword will cause execution to stop and return (skipping all the code below the return keyword)
                        return
                    }
                    
                    // Loop through the array
                    for index in 0...numbers.count-1 {
                        
                        // Increment it by 1
                        numbers[index] += 1
                    }
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                
                Button("Clear") {
                    numbers.removeAll()
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            }
            .foregroundColor(.white)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
