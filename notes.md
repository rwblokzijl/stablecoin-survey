---
title: Dirty notes

---

# Plan

1. Pass 1 to read for correctness
2. Rewrite paper is structure at end of intro
3. Fix graphs
4. Incorporate feedback Johan
5. Fix taxonomy image
6. Final pass

# Introduction notes

What to warm people up for:
 - A fully trustless and decentralised market for derivitives stabalising
   currencies.
 - A case study on how to implement a derivitive

In this survey we aim to classify one aspect of this overlay:

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

| Defunct:    |
|-------------|
| Kowala      |
| AAA reserve |

| Stablecoins by market cap | World rank | Pegged to | Decentralised? |
|---------------------------|------------|-----------|----------------|
| Tether                    | 4          | Dollar    | No             |
| USDC (Centre)             | 24         | Dollar    | No             |
| PAX                       | 31         | Dollar    | No             |
| TrueUSD                   | 35         | Dollar    | No             |
| Dai (MakerDAO)            | 59         | Dollar    | Yes            |
| Stasis Euro               | 96         | Euro      | No             |

# Centralised

## Theory

[Fedcoin_Central_Bank_R3.pdf](https://www.r3.com/reports/fedcoin-a-central-bank-issued-cryptocurrency/)                                                                                                  |                                                               |

## Examples

### Pegged by reputation
[JPMorgan Coin](https://www.jpmorgan.com/global/news/digital-coin-payments)
 JP Morgan backed, aim to provide fast inter-organisation value transfer

[Libra](https://libra.org/en-US/wp-content/uploads/sites/23/2019/06/LibraWhitePaper_en_US.pdf)
 Not pegged, or backed

### Pegged by currency reserves
[Centre](https://www.centre.io/pdfs/centre-whitepaper.pdf)
fiat pegged, multiple holders/issuers (exchanges)

[Gemini](https://gemini.com/wp-content/themes/gemini/assets/img/dollar/gemini-dollar-whitepaper.pdf)
Centralised reserves, fiat backed by bank, approved by New York State Department
of Financial Services, run by exchange,

[PAXos](https://account.paxos.com/whitepaper.pdf)
Centralised reserves, fully collatoralised, approved by New York State
Department of Financial Services

[Tether](https://tether.to/wp-content/uploads/2016/06/TetherWhitePaper.pdf)
Largest stablecoin right now, centralised reserves, 1 escrow account,
controversial because of autiting funny business

[TrueUSD](https://www.trusttoken.com/trueusd)
Multiple escrow, audit by third party, used to be 2nd largest coin

[Stasis](https://www.docdroid.net/QdCqGO9/stasis-white-paper-2.pdf)
Company that tokenises assets, Euro stablecoin as a first product, Network of
liqudity providers, focus on regulation, live since december 2018,

[stably](https://www.stably.io/static/whitepaper.pdf)
Multiple escrow, audits, FDIC-insured

### Pegged by assets
[DigixDAO](https://digix.global/whitepaper.pdf)
DAO, gold pegged coin, central storage of gold

[globcoin](https://globcoin.io/assets/pdf/whitepaper-Globcoin-v3.1.0.pdf)
Made by an Asset Management Company, Diversified reserve of 15 currencies,
basically a token for a "basket of global currencies"

[x8currency](https://x8currency.com/wp-content/uploads/X8-Project-TGE-Whitepaper.pdf)
Token that tracks 7 currencies and gold.

### Pegged by other centralised stablecoins
[Reserve](https://reserve.org/whitepaper.pdf)
Centralised governance with "promise" of decentralisation, collateral using
USDC, TUSD, PAX, backed by big names, launches q3 2019, only "Reserve Rights"
(governance token) are on the market as of now


# Decentralised

## Collateralised

### Dependencies
[Chainlink](https://link.smartcontract.com/whitepaper) oracle

[BitShares](https://www.bitshares.foundation/articles/2018-06-01-bitshareswhitepaper)
bitusd is a token for speculating on bitshares uses CDP like structure

[MakerDAO](https://makerdao.com/whitepaper/DaiDec17WP.pdf)
DAO, pegged to dollar, CDP accepting ether, plans to add Digix gold CDPs, gets
margin called when under collatoralsed, governance token is printed and sold as
last resort

[Havven](https://www.synthetix.io/uploads/havven_whitepaper.pdf)
generalises stablecoin to tracking of offchain trackers, now synthetix, hold
singe collatoral pool of "SNX", allows exchanes between any tracked asset

### Domain Specific
[Steem dollar](https://steem.com/steem-whitepaper.pdf)
Steem-dollars are used for storing proceeds on the steemit network, redeemable
for 1 dollar worth of newly minted STEEM with a weeks delay |

## Algorithmic

### Theory

[How to make a digital currency on a blockchain stable](https://www.sciencedirect.com/science/article/pii/S0167739X18300475)

 - Argues that the way newly created currency is unlinked to the supply and
 demand leads to uneccessary instability.
 * Mining rate increases and decreases with demand and thus price
     * Mining reward should go up when mining rate increases
     * Mining reward should go down when mining rate decreases.
     * This is done by not resetting the block time to 10 minutes unless a
     minimum/maximum threshold is reached.
     - When the threshold blocktime is reached the reward for the block should
     simply be scaled with the mining difficulty.
 * The author also suggests no halving in mining reward
 * To cull inflation the author suggests a mechanism for deflation
    * every 100 blocks all bitcoins are depreciated in value by deleting a
    percentage of them

### Practice

[Nubits](https://nubits.com/whitepaper)
First Stablecoin to be stable for a year, incetivises holders to park currency
during low demand, Democratic DAO, failed after a demand shock in 2016,
recovered, failed again, never recovered again |

[Ampleforth](https://www.ampleforth.org/paper/)
Formerly fragments, Scales existing coins in place to make 1 equal to a dollar,
rebase happens at most every 24 hours

[Anchor](https://theanchor.io/whitepaper/)
Pegs to "Global Economic Growth" with MMU oracle (Monetary Measurement Unit).
Uses Seigniorage Shares Model

[Basis](https://www.basis.io/basis_whitepaper_en.pdf)
decentralised, defunct, brings up interesting faults of makerdao and bitshares
was based on Seigniorage Shares Model

[BitBay](https://bitbay.market/downloads/whitepapers/bitbay-dynamic-peg.pdf)
peg needed for trading platform, maintains rollong peg by freezing users coins

# General theory
## [Are Stable Coins Stable?](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3326823)

 * argues

|                                                                                                                                                                                                          |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [DuffieDigital and Fast Payment Systems](https://www.darrellduffie.com/uploads/policy/DuffieDigitalPaymentsMay2019.pdf)                                                                                  |
| [Money as IOUs in Social Trust Networks](https://www.researchgate.net/publication/228729340_Money_as_IOUs_in_Social_Trust_Networks_and_a_Proposal_for_a_Decentralized_Currency_Network_Protocol)         |
| [Can We Stabilize the Price of a Cryptocurrency?: Understanding the Design of Bitcoin and Its Potential to Compete with Central Bank Money](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2519367) |
| [TrustChain](https://ieeexplore.ieee.org/document/8696786)                                                                                                                                               |
| [THE STATE OF STABLECOINS](https://www.blockchain.com/ru/static/pdf/StablecoinsReportFinal.pdf)                                                                                                          |
| [Stablecoins in Cryptoeconomics. From Initial Coin Offerings (ICOs) to Central Bank Digital Currencies (CBDCs)](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3385840)                             |
| [Stablecoin: Yet Another Layer of Cryptocurrency Complexity](https://search.proquest.com/docview/2287330661?pq-origsite=gscholar)                                                                        |
| [(In)stability for the Blockchain: Deleveraging Spirals and Stablecoin Attacks](https://arxiv.org/abs/1906.02152)                                                                                        |
| [Elasticoin: Low-Volatility PoSW](https://ieeexplore.ieee.org/document/8751402/)                                                                                                                         |
| [Designing Stable Coins](https://duo.network/papers/duo_academic_white_paper.pdf)

# Coins to investigate
|                                                                                                             |
|-------------------------------------------------------------------------------------------------------------|
| [minex](https://minexcoin.com/html/download/wpeng.pdf)                                                      |
| [carbon](https://www.carbon.money/whitepaper.pdf)                                                           |
| [augmint](https://docs.google.com/document/d/1IQwGEsImpAv2Nlz5IgU_iCJkEqlM2VUHf5SFkcvb80A/edit?usp=sharing) |
| [AuroraDAO](https://auroradao.com/whitepaper/Aurora-Labs-Whitepaper-V0.9.7.pdf)                             |


# Intro

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



# background notes

- Talk about varying therories of money
    - Quantity
    - Supply and demand
    -

# Johan notes

## total
(johan brief remarks: writing style, remove negativities, citations, "immature?"
and first table; then discuss it)

* "mostly theoretical way of creating a stablecoin is to simply promise as
 an organisation that your coin is going to be stable"; Great point. Make
 this a bit more principled by giving it a fitting name: "Blue Eyes
 Backed", for instance.

## intro

 - 1st line intro stuff: stable coins are a promise to offer all the advantages
 of the digital world, while being as reliable as a briefcase of 500 Euro notes.
 (easy on the content, easy to read, easy to understand)
 -

 - intro not yet re- written
 - Rewrite intro of Facebook Libra dominance, instead of Tether

 * consider making the tone boring and solid:
    + Replace Tether with ECB and German bank club
    * [Central bank digital currencies by European Central Bank](
      https://www.ecb.europa.eu/press/key/date/2018/html/ecb.sp180514_4.en.html)
    * [German bankenverband.de : crypto-based Euro](
      https://bankenverband.de/newsroom/comments/programmable-digital-euro/)


## Layout:

- Catchy intro
    - What are stablecoins and what do they promise
    - fixes the shortcoming of earlier cryptos
    - with the potential that comes with it

- who are the players in the game
    - Rewrite intro of Facebook Libra dominance, instead of Tether
    - Mention tether, and makerdao

- what are the central themes of stablecoins
    - a stable exchange price needs to be guaranteed
    - price follows guarantees on exchange

- how to the different branches of stablecoins emerge from this
    - Centralised stablecoins offer the guarantees by centralisation
        - This allows for high stability
        - trust is dependent by reputation (Blue eyes promise)
    - Decentralised stablecoins create guarantees by market forces
        - trust is cultuvated by decentralisation and technology (idealistic promise)
    - Include images

- Inherent tradeoffs between the systems

- How is this paper structured to capture this
    - Background, centralisation, decentralisation, discussion, conclusion

In this paper we first discuss the topic of the purpose of money, the meaning of
value and stability, and some currency pegs used in our traditional monetary
system in Chapter 2. We then describe the simplest and most successful
stablecoins, namely the centralised coins in Chapter 3. In Chapter 4 we go into
the more complex topic of decentralised assets and their methods for maintaining
pegs to real world assets without a central party guaranteeing the peg. We then
go deeper into the theory in Chapter 5 where we look at the research into the
viability of stablecoins. We then end with a discussion of the research on
stablecoins in Chapter 6 and a conclusion of the survey in Chapter 7.

## Discussion
 * systemic pegging risks (discussion):
    + first define term
    * counter-party risk around collateral
    * capacity limits, no operational layer 1 can support 22% of the world economy (e.g. The Euro)
    * then layer 1 attacks: transaction spam on Ethereum, each Tx costs \$1000?
    * technical design flaw, current SHA1 end-of-life show what may happen
    * We discover other system risk in the architecture itself [like pre-computation using Rainbow table](https://en.wikipedia.org/wiki/Rainbow_table)
    + are crypto-pegged currencies as dangerous as sub-prime mortgages or can they be made safe?
    * During a financial crisis the evaporation of value in MakerDAO erodes all
      "Tier 1" capital. Instant correlated need for capital by all players in
      the pegged crypto market. "capital run". Explain this principle and give
      it a gloomy name: _**sub-prime cypto**_.
    * _using a volatile crypto and an atomic swap to simulate a a stable
      currency is inherently unstable_
    * @Bloodyfool _since the whole crypto industry is correlated and
      self-amplifying, they all go down together_
    * the need for Tesla, Nike, thorium-ore, and Apple stock to de-correlate
      collateral

