---
title: Dirty notes

---

Reading list in order:

|---|--------------------------------------------------------------------|---|
| 1 | APG Email                                                          | x |
| 2 | Money Routing by Trusting Strangers with your Funds - 08696786.pdf | x |
| 3 | How to make a digital currency on a blockchain stable              |   |
| 4 | Duffie digital payments                                            |   |
| 5 | Ipv8 paper????                                                     |   |
| 6 | Wikipedia                                                          |   |
| 7 | Are Stable Coins Stable? - Usman W. Chohan, MBA, PhD               |   |
| 8 | Coin whitepapers                                                   |   |

| Have | !Have |
| Hodl | buy   |

| Positive | Have | !Have |
| ---      | ---  | ---   |
| Spend    |      |       |
| !Spend   |      |       |


# Notes per read item

## 1 APG Email and document

APG wants to track IOU's on a blockchain. This is not necessarily related to
stablecoin, though some concepts might be transferable.

## 2 Money Routing by Trusting Strangers with your Funds

08696786.pdf

 - Paper by TUD
 - Presents a usecase for using trustchain to track bank transactions
     - Trustchain seems useful in specific circumstances
     - Able to prove a deal happened but not whether it didnt (like contracts)
        - Double spending not solved
        - Useful for contracts


## 3 How to make a digital currency on a blockchain stable

The authors present a model of the interdependencies of mining reward, mining
cost, reachability of proof of work, number of miners, block creation time,
supply and demand.

The authors describe an equilibrium between the price of the coin (thus the
reward) and the cost of mining (electricity).

Based on this theory the authors present the following options in times of
positive demand shock:

 - Not changing reachability of proof of work so miners are incentivised to
 create more coins. (This also increases block creation, leading to higher
 transaction throughput but also a faster growing chain).
 - To avoid accidental forks the time between blocks needs to be limited to some
 minimum time.
 - In order to still stabilise the price when the time between blocks cannot be
 halved again, the difficulty of the PoW can be increased while increasing the
 reward to maintain a stable new coin supply.

And the following in times of negative shocks:

 - Not changing reachability of proof of work so miners are incentivised to
create fewer coins. (This also reduces block creation, leading to lower
transaction throughput but also a faster growing chain).
- To maintain proper transaction throughput time between blocks needs to be
limited to some maximum time.
- In order to still stabilise the price when the time between blocks cannot be
doubled again, the difficulty of the PoW can be decreased while increasing the
reward to maintain a stable new coin supply.

 - Every X blocks reduce the supply of coins by deleting a percentage of
 existing coins uniformly across all coins.
 - This would come in place of the halving rule over time.



## 4 Duffie

Duffie doesnt go deep into mechanisms for price control, but does look at policy
and economic implications of having stablecoins. Duffie claims they can only be
centrally controlled (in practice) but this is semi-disproven by MakerDAO.

# Questions:

 -

 Requirements for a good stablecoin:

 - how to eliminate default risk (e.g. JPMorgan goes bankrupt)
 - provide strongest possible legal certainty
 - design space:
     - a single central collateral bank account
     - multiple collateral bank accounts
     - Each participant has a single collateral bank account
     - Each participant has multiple collateral bank accounts
 - avoid single legal zone: spread out over the globe, beyond Euro-zone?
 - more?

# General stablecoin papers

[How to make a digital currency on a blockchain stable] (https://www.sciencedirect.com/science/article/pii/S0167739X18300475)
Can We Stabilize the Price of a Cryptocurrency?: Understanding the Design of Bitcoin and Its Potential to Compete with Central Bank Money - SSRN-id2519367.pdf

Are Stable Coins Stable? - Usman W. Chohan, MBA, PhD
DuffieDigitalPaymentsMay2019.pdf
SSRN-id3326823.pdf

# Whitepapers for other stablecoins

08751402.pdf (elasticoin)
Fedcoin_Central_Bank_R3.pdf
DaiDec17WP.pdf
digix-whitepaper.pdf
basis_whitepaper_en.pdf
centre-whitepaper.pdf
decentralizedcurrency.pdf
gemini-dollar-whitepaper.pdf
havven_whitepaper.pdf
PAX_Whitepaper.pdf
TetherWhitePaper.pdf

## Find the paper:
https://www.coinbase.com/usdc
https://www.circle.com/en/usdc
https://makerdao.com/en/whitepaper/#overview-of-the-dai-stablecoin-system

# Online articles providing insight

https://en.wikipedia.org/wiki/Stablecoin#targetText=Stablecoins%20are%20cryptocurrencies%20designed%20to,precious%20metals%20or%20industrial%20metals

https://uk.reuters.com/article/us-crypto-currency-basis/cryptocurrency-project-basis-to-shut-down-and-return-funding-to-investors-idUKKBN1OC2OV
https://masterthecrypto.com/guide-to-stablecoin-types-of-stablecoins/
https://www.investopedia.com/tech/goldpegged-vs-usdpegged-cryptocurrencies/
https://www.bloomberg.com/news/articles/2019-01-27/love-crypto-but-not-its-volatility-meet-stablecoins-quicktake
https://www.news.com.au/finance/money/investing/without-this-scam-bitcoin-price-would-collapse-fears-grow-over-tether-printing-press-as-auditors-part-ways/news-story/308503ab61f82d320e92847a0b59a23b
https://chainstate.org/2018/05/12/nubits-loses-1-peg-no-recovery-in-sight/

# Earlier notes within the research group:
https://github.com/Tribler/tribler/issues/4629

https://ieeexplore.ieee.org/document/8696786

# Related projects within the research group

https://github.com/Tribler/tribler/issues/4044
