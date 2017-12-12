pragma solidity ^0.4.19;

contract RockPaperScissors{
    
    
    struct Player {
        address addr;
        uint wager;
        uint object; // 1 = Rock , 2 = Paper, 3 = Scissors
    }
    
    
    struct Game {
        bool gameCompleted;
        string gameState;
        uint numPlayers;
        uint winnings;
        mapping (uint => Player) players;
    }
    
    mapping (uint => Game) games;
    
    
    event UintDebugger(uint debug);
    event StringDebugger(string debug);
    
    
    function Play_RPS(uint game_object) public payable{
        Game storage RPS = games[0];
        
        RPS.players[RPS.numPlayers++] = Player({addr: msg.sender, wager: msg.value, object: game_object});
        
       // UintDebugger(msg.value);
       // StringDebugger(game_object);
       // UintDebugger(RPS.numPlayers);
        
        if(RPS.numPlayers == 1){
            RPS.gameState = "Waiting for player two";
            StringDebugger(RPS.gameState);
        }
        
        // Let's Rumble!
        if(RPS.numPlayers == 2){
            // Verify the wagers are equal
            if(RPS.players[0].wager == RPS.players[1].wager){
                if (RPS.players[0].object == 1 && RPS.players[1].object == 2){
                    //Player two wins
                    RPS.gameCompleted = true;
                    RPS.winnings = RPS.players[0].wager + RPS.players[1].wager;
                    RPS.players[1].addr.send(RPS.winnings);
                }

            }
        }
    }
        

}
