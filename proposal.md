---
date: \today
author:
  - name: Robert Wessel Blokzijl
    affiliation: TU Delft
    location: Delft, The Netherlands
    email: R.W.Blokzijl@student.tudelft.nl
keywords:
  - Permissionless
  - Hypersharding
  - FWSP
  - Blockchain
  - Cryptocurrencies
numbersections: yes
lang: en
babel-lang: english
abstract: |
---

# Introduction

Title ideas:
 - Solving double spending on permission-less Hyper-Sharded Blockchains
 - Solving double spending by using continuously evolving witness sets to
 create a chain of custody.

Core idea:
 - Double spending can be prevented by preventing forks of the local blockchain
 - preventing forks can be done by enforcing a pointer to the last block
 - enforcing a pointer can be solved by a maintaining a set of fairly selected
 witnesses store the last block hash
 - maintaining a set of fair witnesses can be solved by incentivising account
 holder to monitor the set size and expanding the set when needed
 - fairly selecting witnesses can be solved using the Fair Witness Selection
 Protocol

Protocol brainstorm:
- use FWSP to select witnesses *for each account*
    - witnesses store only the *last block hash* (or block)
- transact as follows:
    - sender creates a transaction block specifying:
        - amount transferred
        - updated account balance (so we don't need history)
    - sender provides all blocks, starting at the last stored hash, ending at the
    newly created block, to all witnesses:
    - witnesses then:
        - verify the subchain if:
            - the first block provided matches the stored hash
            - all transactions and account balances are valid
        - if the subchain is verified:
            - the stored hash is updated
            - a signature of the last block is returned to the sender
    - sender provides block and signatures to receiver who verifies the
    signatures and witness set
    - receiver can submit this block to its witness set, but if the witnes set
    can be verified after any period of time somehow, the blocks only have to be
    submitted during the spending of the transferred funds.
- avoid witness set degradation:
    - each account holder is responsible for "adding" new witnesses if their
    witness set degrades
       - if witness counts degrade below a certain level, this accounts
       transactions can no longer be accounted for and the account is "lost"
       - Witnesses could also find replacement when leaving, by punishment of
     losing a "stake"
    - a new witness must be provided a block hash that is verified by k other
    witnesses
    - this means that a witness set is degraded when the total witnesses online
    drops below k, but can be restored if they come back online

Further questions:

 -  What to do with lost funds on witness degradation?
 -  how are bad witnesses punished? stakes?
 -  sybil resistance?
 -  avoid half a transaction if the receiver drops their connection
    - transact only if both witness sets write?
 - Minimum witness count?
    - For transaction
    - For adding new witnesses
