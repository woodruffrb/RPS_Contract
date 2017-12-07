RPS Solidity Contract

Bob Address: 0x69c47D307D4E7D5C84d95Cff2A9B9bB95681c189

Alice Address: 0x370712e616d837840a526d68d8887e2C914cBa0A

pvt keys: See "PVT_Keys.zip"

Goal:

	Build a smart contract which allows two players to gamble ether to play a fair game of rock paper scissors. 

Roadmap:

	1) Simple Transaction:
	Build a smart contract that does a simple transaction. E.g Bob sends 0.1 ether to a solidity contract with Alice's address. The smart contract accepts Bob's input, verifies it's validity, if valid perform the transaction. If false return the ether to Bob.

	2)Coin Flip:
	In this contract both Bob and Alice send ether to the smart contract to initiate a game of chance, a 50/50 coinflip. The smart contract verifies that both have sent the same amount of ether (if amount sent differs return ether to the player who sent more to make it even), the contract then needs a random number (maybe we can use the latest blockchain nonce). We'll say if that number is even then heads wins, if odd then tails wins. Perform transaction to send all contract ether to the winner.

	3) RPS:
	Now the smart contract performs a game of rock, paper, scissors. We can add an additional parameter to allow players to play best 2of3, how to handle ties (return all ether or play again) etc.

	4) (Growth) Blackjack? other games of chance?


