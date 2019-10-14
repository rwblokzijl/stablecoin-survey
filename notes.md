---
title: Dirty notes

---

# TO UNDERSTAND

 -



# Introduction notes

What to warm people up for:
 - A fully trustless and decentralised market for derivitives stabalising
 currencies.
 - A case study on how to implement a derivitive

In this survey we aim to classify one aspect of this overlay:

# Reading list in order:

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


## Collateralised centrally

- Dollar
    - AnchorUSD
    - Gemini Dollar
    - Neutral Dollar(aggregate)
    - PAXos
    - TrueUSD
    - USD Coin

- Euro
    - Augmint
- Gold
    - Digix

## Collateralised decentrally

Pegged to Fiat:

 - MakerDAO(eth)
    - Uses CDPs to
 - EOSDT(eos)

Pegged to bitcoin:
 - WBTC(btc)

## Not Collateralised

 - Bay
    - "Freezes" a fraction of the coins when the price gets to low
        - This reduces liquidity and thus reduces supply
    * Liquid coins can be traded instantly
    * Frozen coins can be traded with a delay of a month



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

# Sources

| Title:                                                                                                                                                                                                   | Notes |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------|
| [How to make a digital currency on a blockchain stable](https://www.sciencedirect.com/science/article/pii/S0167739X18300475)                                                                             |       |
| [Are Stable Coins Stable?](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3326823)                                                                                                                  |       |
| [DuffieDigital and Fast Payment Systems](https://www.darrellduffie.com/uploads/policy/DuffieDigitalPaymentsMay2019.pdf)                                                                                  |       |
| [Money as IOUs in Social Trust Networks](https://www.researchgate.net/publication/228729340_Money_as_IOUs_in_Social_Trust_Networks_and_a_Proposal_for_a_Decentralized_Currency_Network_Protocol)         |       |
| [Can We Stabilize the Price of a Cryptocurrency?: Understanding the Design of Bitcoin and Its Potential to Compete with Central Bank Money](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2519367) |       |
| [TrustChain](https://ieeexplore.ieee.org/document/8696786)                                                                                                                                               |       |
| [THE STATE OF STABLECOINS](https://www.blockchain.com/ru/static/pdf/StablecoinsReportFinal.pdf)                                                                                                          |       |
| [Stablecoins in Cryptoeconomics. From Initial Coin Offerings (ICOs) to Central Bank Digital Currencies (CBDCs)](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3385840)                             |       |
| [Stablecoin: Yet Another Layer of Cryptocurrency Complexity](https://search.proquest.com/docview/2287330661?pq-origsite=gscholar)                                                                        |       |
| [(In)stability for the Blockchain: Deleveraging Spirals and Stablecoin Attacks](https://arxiv.org/abs/1906.02152)                                                                                        |       |
| [Elasticoin: Low-Volatility PoSW](https://ieeexplore.ieee.org/document/8751402/)                                                                                                                         |       |
| [Chainlink](https://link.smartcontract.com/whitepaper)
| [Designing Stable Coins](https://duo.network/papers/duo_academic_white_paper.pdf)
| [Fedcoin_Central_Bank_R3.pdf](https://www.r3.com/reports/fedcoin-a-central-bank-issued-cryptocurrency/)                    |                                                                                |

| Stablecoin                                                                                                                 | notes                                                                                                                                                  |
|----------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Ampleforth](https://www.ampleforth.org/paper/)                                                                            | Formerly fragments, Scales existing coins in place to make 1 equal to a dollar, rebase happens at most every 24 hours                                  |
| [Anchor](https://theanchor.io/whitepaper/)                                                                                 | Pegs to "Global Economic Growth" with MMU oracle (Monetary Measurement Unit). Uses Seigniorage Shares Model                                            |
| [basis_whitepaper_en.pdf](https://www.basis.io/basis_whitepaper_en.pdf)                                                    | decentralised, defunct, brings up interesting faults of makerdao and bitshares was based on Seigniorage Shares Model                                   |
| [BitBay](https://bitbay.market/downloads/whitepapers/bitbay-dynamic-peg.pdf)                                               | peg needed for trading platform, maintains rollong peg by freezing users coins                                                                         |
| [BitShares](https://www.bitshares.foundation/articles/2018-06-01-bitshareswhitepaper)                                      | bitusd is a token for speculating on bitshares uses CDP like structure                                                                                 |
| [centre-whitepaper.pdf](https://www.centre.io/pdfs/centre-whitepaper.pdf)                                                  | fiat pegged, multiple holders/issuers (exchanges)                                                                                                      |
| [digix-whitepaper.pdf](https://digix.global/whitepaper.pdf)                                                                | DAO, gold pegged coin, central storage of gold                                                                                                         |
| [DaiDec17WP.pdf](https://makerdao.com/whitepaper/DaiDec17WP.pdf)                                                           | DAO, pegged to dollar, CDP accepting ether, plans to add Digix gold CDPs                                                                               |
| [gemini-dollar-whitepaper.pdf](https://gemini.com/wp-content/themes/gemini/assets/img/dollar/gemini-dollar-whitepaper.pdf) | Centralised, fiat backed, made by exchange                                                                                                             |
| [havven_whitepaper.pdf](https://www.synthetix.io/uploads/havven_whitepaper.pdf)                                            | generalises stablecoin to tracking of offchain trackers, now synthetix, hold singe collatoral pool of "SNX", allows exchanes between any tracked asset |
| [JPMorgan Coin](https://www.jpmorgan.com/global/news/digital-coin-payments)                                                | Centralised, JP Morgan backed, aim to provide fast inter-organisation value transfer                                                                   |
| [Libra](https://libra.org/en-US/wp-content/uploads/sites/23/2019/06/LibraWhitePaper_en_US.pdf)                             | Centralised, not pegged, or backed                                                                                                                     |
| [PAX_Whitepaper.pdf](https://account.paxos.com/whitepaper.pdf)                                                             | Centralised, fully collatoralised
| [Reserve](https://reserve.org/whitepaper.pdf)                                                                              |                                                                                                                                                        |
| [TetherWhitePaper.pdf](https://tether.to/wp-content/uploads/2016/06/TetherWhitePaper.pdf)                                  | c                                                                                                                                                      |
| [TrueUSD](https://www.trusttoken.com/trueusd)                                                                              | c+                                                                                                                                                     |
| [Nubits](https://nubits.com/whitepaper)                                                                                    | c---                                                                                                                                                   |
| [Stasis](https://www.docdroid.net/QdCqGO9/stasis-white-paper-2.pdf)                                                        | c                                                                                                                                                      |
| [Steem dollar](https://steem.com/steem-whitepaper.pdf)                                                                     |                                                                                                                                                        |
| [AuroraDAO](https://auroradao.com/whitepaper/Aurora-Labs-Whitepaper-V0.9.7.pdf)                                            |                                                                                                                                                        |
| [globcoin](https://globcoin.io/assets/pdf/whitepaper-Globcoin-v3.1.0.pdf)                                                  |                                                                                                                                                        |
| [x8currency](https://x8currency.com/wp-content/uploads/X8-Project-TGE-Whitepaper.pdf)                                      |                                                                                                                                                        |
| [stably](https://www.stably.io/static/whitepaper.pdf)                                                                      |                                                                                                                                                        |
| [minex](https://minexcoin.com/html/download/wpeng.pdf)                                                                     |                                                                                                                                                        |
| [carbon](https://www.carbon.money/whitepaper.pdf)                                                                          |                                                                                                                                                        |
| [augmint](https://docs.google.com/document/d/1IQwGEsImpAv2Nlz5IgU_iCJkEqlM2VUHf5SFkcvb80A/edit#heading=h.wx1pwmuencup)     |                                                                                                                                                        |

| Defunct:    |
|-------------|
| Kowala      |
| AAA reserve |

| Centralised stablecoins |  |  |

# Paper in few sentences:

Intro
Stablalising a currency is very useful.

Stablalising a currency is always done through market makers. By incentivising
people to buy a currency when the price is low, and selling it when it is high,
supply and demand will be adjusted to stabelise the currecy around any chosen
value.

Centralised
The easiest way to get market makes to buy and sell a currency to stablilise the
price, is by simply being the entity that sells and buys it at that price.

pros, more pros, mooore pros
allow interbank payments (jpmorgan coin)

problems...

Decentralised
To avoid a central party holding the colatoral neccesary, ways have been
developped to create a market...

Bitshares

Match people going long and short on the currency

Someone takes the hit, not the system

pros, more pros, mooore pros

problems... linked to the bitshares platform

makerdao

pros, more pros, mooore pros

problems... this fails when markets go crazy... this

Generalising the ideas of these currencies

Derivatives on the chain

Global enforcement based on contracts
    - Futures and options
        - enforced by collatoral
        - or reputation (trustchain)


