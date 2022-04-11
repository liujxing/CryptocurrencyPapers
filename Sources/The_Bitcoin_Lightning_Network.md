## The Bitcoin Lightning Network - Scalable Off-Chain Instant Payments

### Notes

- This paper introduces lightning network on top of bitcoin network. 
- Lightning network is basically an off-chain payment system that allows users to do instant payment by exchanging information off-chain, and only defer the broadcasting to bitcoin chain when they would like close their communication and update the balance, or when the users have dispute in terms of the final balance. 
- The advantage of lightning network is when two users have recurring payment, they can only broadcast the final balance while keeping the intermediate balance update to themselves. This significantly reduces the number of broadcasting needed on the blockchain, hence reducing the transaction fee and getting instant balance update. 
- The lightning network uses the blame system, so that if one user broadcasts the incorrect money flow, the other user would have enough time to find it out and uses the information from the broadcast of the counterparty to take all the money. This incentivies the two parties to always broadcast the correct information. 
- The lightning network uses HTLC, which basically means user B can spend the money instantly if he gets preimage of certain hash, while user A can spend the money unconditionally but only after a few days. The HTLC allows the network to keep states (whether someone has preimage of a certain hash or not) across different payment channels. 
