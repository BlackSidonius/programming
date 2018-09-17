//
//  Sign.swift
//  RPS
//
//  Created by Zdeněk Černoch on 08.04.18.
//  Copyright © 2018 Zdeněk Černoch. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)



enum Sign {
    case rock, paper, scissors
    
    var signIcon: String {
        switch self{
        case .rock:
            return "👊"
        case .paper:
            return "🖐"
        case .scissors:
            return "✌️"
        }
    }
    
    func countResult(oponentSign: Sign) -> GameState {
        switch self{
        case .rock:
            switch oponentSign{
                case .rock:
                    return GameState.draw
            case .paper:
                return GameState.lose
            case .scissors:
                return GameState.win
            }
        case .paper:
            switch oponentSign{
            case .rock:
                return GameState.win
            case .paper:
                return GameState.draw
            case .scissors:
                return GameState.lose
            }
        case .scissors:
            switch oponentSign{
            case .rock:
                return GameState.lose
            case .paper:
                return GameState.win
            case .scissors:
                return GameState.draw
            }
        }
    }
}

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors 
    }
}
    


