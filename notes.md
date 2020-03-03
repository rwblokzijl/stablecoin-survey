---
title: Dirty notes

---

# Notes to remember when writing:

# TO Do

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

# OLD CENTRALISED TEXT

## usd

The most successful currency to do so and the 5th largest cryptocurrency as of
writing this survey is Tether [10]. Tether maintains a 1:1 peg to the US dollar
by simply issuing 1 Tether for every Dollar payed to them. They hold the USD and
will at any time buy the Tether back at 1 Dollar price. This intensives the 1:1
peg outside of the official Tether exchange as well as any investor able to buy
Tether at under a Dollar can immediately sell it to the Tether organisation for
profit thus reducing supply on the open market when demand drops. On the other
hand, an investor able to sell a Tether for over a dollar can make a profit by
buying newly minted Tether thus increasing supply when demand increases.

As mentioned, Tether is currently the largest stablecoin, however its
centralised reserves draw controversy that reduces investor trust. An
improvement on this concept is to4 have multiple holders of the currency with
frequent audits to increase trust in the organisations that are making the
market. TrueUSD [13] holds collateral in multiple escrows and is audited by
third party as a result they used to be 2nd largest coin before being overtaken
by USD Coin (USDC). USDC is a USD pegged stablecoin created by CENTRE [11] a
joint venture of the exchanges Coinbase and Circle which also holds their
collateral in multiple audited accounts.

The next level of trust that a stablecoin can guarantee comes from the
government. PAXos [12], though having centralised reserves, is licensed and
approved by New York State Department of Financial Services and has secured
FDIC-insurance. This has won the favor of investors as they are now the 3rd
largest stablecoin after Tether and Centre.

The largest current Euro coin is the Stasis euro [14]. It represents over 31
million euros currently and has maintained its peg since its launch in December
2018. Stasis has built a network of liquidity providers and is thus not the
market maker themselves.

## Pegged by assets

Essentially, a centralised currency pegged stablecoin is just a tokenised asset.
This can be taken further than just currencies. Using tokenisation it is
possible to peg the value of a crypto coin to anything.

Digix Gold Token (DGX) [@DigixDAO:whitepaper] pegs its stablecoin to the value
of an ounce of gold. DGX is thus a cryptocurrency on the gold standard. However
with the tracking of real world assets comes centralisation. DigixDAO, the
organisation that manages DGX, stores its gold in a single vault in Singapore.

When the goal is to have a stable currency the dollar is not necessarily the
best option as it is tied to the economy of the United States. Globcoin
[@globcoin:whitepaper] and x8currency [@x8currency:whitepaper] aim to solve this
by creating an asset that tracks multiple currencies as well as gold.

## Pegged by other centralised stablecoins

In order to peg perfectly to a currency that currency needs to be regained from
the stablecoin at any time. This requires the storage of the coin by some party.
In all stablecoins so far, this is relatively centralised. Even coins splitting
their coins across multiple escrowed accounts are subject to centralised fraud.

As a result coins are being developed that try to diversify the collateral.
Reserve [@Reserve:whitepaper] aims to collateralize using USDC, TUSD, PAX. They
aim to go through multiple phases with a final state where they are no longer
pegged to the Dollar at all but a stable currency in itself.


# OLD Stabilised while Decentralised

| DigixDAO | 5 Million USD | Gold (1 gram) | Single physical vault | No | 2018 | Stores gold in a vault in Singapore, aims to become decentralised |

| USDQ | 5 Million USD | Backed by bitcoin |


## Collateralized

Just like centralised stable coins the most successful stablecoins are
collateralised in some manner. The difference between them is that decentralised
collateral comes in the form of other crypto currencies. Even though the
collateral is not US dollars, MakerDAO's Dai [@MakerDAO:whitepaper] still
manages to maintain an average price of 1 dollar without any central form of
governance. Similarly BitShares' [@BitShares:whitepaper] various fiat pegged
coins, and Synthetix's [@Havven:whitepaper] various pegged assets track other
real world assets without holding any of these assets.

### BitShares

In July 2014 the BitShares [@BitShares:whitepaper] foundation launched BitUSD, a
stablecoin that tracks the US Dollar and is collateralised in BitShares.
BitShares are shares in the distributed autonomous company (DAC) also called
BitShares. BitShares aims to be a decentralised exchange providing financial
derivatives on the blockchain.

The role BitUSD plays in the exchange is best described as an order-matching
between investors going "long" and "short" on BitUSD. An investor speculating
on BitUSD will exchange some BitShares for 1 BitUSD. They can force settlement
and sell the BitUSD back for 1 dollar worth of BitShares at any time. If the
price of BitUSD goes up, they make a profit, but if it falls they are protected.

On the other side of the coin, there is the BitShares investor going short on
BitUSD. This investor creates a short order and stakes enough BitShares
collateral to cover an increase in BitUSD or drop in BitShares. When the order
gets matched with a long investor by the exchange, the investor gets 1 BitUSD
and the shorter is responsible for maintaining enough collateral to back the
BitUSD at a 2:1 ratio. If the investor fails to maintain collateral above this
ratio, the BitUSD contract will get margin called.

A margin call means that the blockchain will automatically create an order for
anyone to sell their BitUSD for a profit. This profit comes out of the
stake of the shorter as they did not properly maintain the collateral in the
contract. Whatever is left after the margin-call is returned to the shorter.

If a shorter wishes to close out their position, they must buy a BitUSD to get
their collateral back. If the price is lower than what the investor paid them,
they make a profit, if BitUSD got more expensive the shorter now has to cover
those costs.

This mechanism stabilises the price of BitUSD through its interaction with the
market. BitUSDs are fully fungible, meaning any BitUSD can be bought to close
out a short. This means that if an investor is able to buy a BitUSD for under a
dollar, they can immediately force the settlement.

Note there is no hard mechanism for adjusting the price down. This means the
currency can move up to whatever the markets think it is worth. It relies on the
shorters buying the BitUSD at a loss when the price starts going up. If the
market as a whole chooses to collateralize up to the new value, a new peg will
be created there, except for the guarantee of forced settlement. The market does
move as a whole however, as every short seller that doesn't collateralize up will
get margin called.

### MakerDAO

MakerDAO[@MakerDAO:whitepaper] is a Distributed Autonomous Organisation that consists of 2 main coins.
A governance token called Maker and the stablecoin Dai. As opposed to BitShares,
Dai is not backed by the governance token, but rather by Ether. There is also no
matching of "long" and "short" sellers, but simple smart-contracts can allow
contract for difference trades like BitShares.

Dai is stabilised by a single class of investor, namely someone speculating on
Ether. Dai is created in a process where an investor locks their Ether into a
smart-contract called a Collateralized Debt Position (soon to be renamed to
Vault). This allows the investor to mint Dai that is now backed by the locked
Ether. At any time, the investor can pull out their Ether by trading it
back for the amount of Dai that had previously been created.

The investor has to lock over 150% of the value of the Dai created in order to
make sure that the system is always properly collateralised. So if the investor
prints 100 Dai there has to be at least 150 dollars worth of Ether locked away.

The investor can use their Dai as they see fit. A common use case is peer-to-peer
lending. Another is to buy more Ether to stake, thus taking a leveraged position
on Ether. Note that since the position has to be over-collateralised by at least
150%, that the maximum leverage is a ratio of 3.

This leads to a mechanism similar to the one that stabilises centralised coins.
If the price on the market is below 1 dollar an instant profit can be made by
buying them and resolving the open CDP. Like BitShares, there is no direct
mechanism to reduce the price should it trade for more than a dollar.

Multi-collateral Dai aims to solve the problem of collateral devaluing. By
having different collateral assets that are uncorrelated, the devaluing of one
form of collateral can be safely handled by investors buying a non-devaluing
form of collateral in order to pay off the failing CDPs.

### Synthetix

After BitShares and Maker showed how a non-blockchain asses can be tracked in a
fully decentralised manner, Synthetix [@synthetix:whitepaper] builds on it by
tracking any real world index that can be fed to the blockchain.

Originally Havven [@Havven:whitepaper], Synthetix generalises stablecoin to
pegging to any off-chain trackers. By putting up Synthetix Network Tokens (SNX)
as collateral, an investor can create any synthetic asset within a 500%
collateralization ratio. These synthetic assets tracking some index are called
synths.

Since any synth can be exchanged for SNX and then into any other synth,
Synthetix chooses to allow direct trading between synths. This allows for a full
peg as any pegged asset can be exchanged for another using the blockchain
Synthetix exchange. This peg is much harder to break than the soft pegs of
BitShares and MakerDAO.

As opposed to MakerDAO and BitShares, in the Synthetix network the investor that
stakes the collateral gains an interest on their stake from the transaction fees
between the synths. Stakers in the MakerDAO system have to pay a yearly
stability fee (currently 5%) in order to be able to retract their collateral. In
the BitShares network, stakers pay an interest rate to the BitUSD holders. This
mechanism of incentivising stakes can lead to profits for stakers even in a
bear market.

### Dependencies

So far we have discussed three systems for asset stabilisation using
decentralised means. However, all these systems rely on having correct pricing
information on the asset they are aiming to peg.

Currently some projects are using [@Oraclize:whitepaper], but as their oracle is
centralised most DAO project are moving away to their own solutions or to
Chainlink[@Chainlink:whitepaper]. Chainlink describes itself as a middleware
between the real world and the blockchain. It can also provide information about
blockchains to other blockchains. Thus linking them together. This system lends
itself to tracking of asset prices very well.

MakerDAO makes plans to shift from their "medianizer" smart-contract to
Chainlink soon. As well as Synthetix, which currently uses a centralised oracle,
switching to the decentralised middleware.

## Algorithmic

Of course, stablecoins as a pegged currency are only a band aid on the real
problem. Cryptocurrencies need to be stable on their own if they are ever going
to replace fiat currencies.

### Practice

In practice we have seen some notable distributed cryptocurrencies attempt to
create a stable cryptocurrency without collateral.

The first stablecoin to be stable for a year was Nubits[@Nubits:whitepaper].
Nubits incentivised holders to park currency during low demand periods. They
successfully recovered from a large demand shock in 2016, but after the crash of
2017-2018 it lost its peg again and never recovered.

BitBay [@BitBay:whitepaper] is a cryptocurrency by the trading platform BitBay.
BitBay suggests a "dynamic rolling peg" a system whereby all users of the
system vote on the inflation and deflation of the supply for an interval. BitBay
also freezes the fastest assets for a period of time. Going back to the
quantity theory of money, this corresponds to changing the velocity of the money
rather than the supply.

Just like Nubits and BitBay, Anchor[@Anchor:whitepaper] incentivises holders of
the currency ANCT to trade it for DOCT when the currency is listed at under 1
"MMU". When the price of the currency goes above 1 "MMU" the holders of DOCT are
incentivised to get their ANCT back. In this way anchor found a way to reduce
the money supply and thus the price. As opposed to being pegged to the dollar it
is pegged to the "Global Economic Growth" by MMU oracle (Monetary Measurement
Unit). Anchor just launched so very little information is available about their
success or failure.

Ampleforth [@Ampleforth:whitepaper] doesn't call itself a stablecoin. It doesn't
aim to maintain a stable price, it just aims to be uncorrelated with both Bitcoin
and the real world financial markets. While Ample does maintain a peg to a
target, the system does not aim to maintain the value in its holders accounts.
Say the price of Ample doubles due to high demand. Ampleforth will double all
existing coins in place to make 1 coin equal to the target again. A rebase of
the price happens at most every 24 hours.

Basis[@Basis:whitepaper] was a project that aimed to stabilise a currency by
auctioning bonds for its coin during a time of low prices to decrease the money
supply. These bonds can then be redeemed at a time of high demand for exactly 1
basis. This mechanism is similar to that of freezing assets, just that the
frozen assets are referred as bonds in this case. Basis never launched.


### Theory

#### start old sentences
A number of papers [cite] propose cryptocurrency parameters that dynamically
respond to changes in supply and demand.

#### end old sentences

When it comes to algorithmic stability of blockchain currencies, there is a lot
more academic research available. Most actual working blockchain based
distributed systems that provide any value are built by DAOs and foundations and
end up falling more in the pegged currencies and crypto-derivative markets. This
makes sense as these are the first most obvious use cases of blockchains. However
as the space starts to age and the rate of progress starts to slow, academia
will likely find their place in the space again.

For now the research into stablecoins mainly aims to model and improve the
mining algorithms. In "How to make a digital currency on a blockchain stable"
[@How_to_make_a_digital_currency_on_a_blockchain_stable] Saito et al. describes
a number of improvements that would make bitcoin more capable of responding to
fluctuations in price.

Saito argues that the absence of a link between newly minted currency and the
supply and demand leads to unnecessary instability. Since miners will increase
and decrease their mining efforts as the price of bitcoin fluctuated, this
behaviour can be build upon to respond to both demand and supply shocks.

Saito suggests that mining reward should go up when mining rate increases as
this only happens when the price of bitcoin has risen. Thus increasing the
supply and absorbing some of the demand shock. Inversely mining reward should go
down when mining rate decreases.

According to Saito this should be done by not resetting the block mining time to
10 minutes unless a minimum/maximum threshold is reached. When the threshold
blocktime is reached the reward for the block should simply be scaled with the
mining difficulty.

Saito also suggests no halving in mining reward. To cull inflation he suggests a
mechanism for deflation of the currency every 100 blocks all bitcoins are
depreciated in value by deleting a percentage of them universally.

In "Elasticoin: Low-Volatility Cryptocurrency with Proofs of Sequential Work"
[@Elasticoin_Low-Volatility_PoSW] Dong et al. argues that as the mining rate
should remain constant, a better way to build a more stable currency is as a
secondary token. Dong argues for using Proofs of Sequential work (PoSW) to
generate currency at a fixed rate. This allows anyone to mine a coin by putting
in some work. This leads more mining when the price is high and nearly none when
it is low.

Dong argues that PoSW will scale much better into the future as the sequential
speed of processors improves at a much slower rate than parallel speeds. Dong
presents a non-interactive PoSW. And an algorithm for minting based on this
Proof.

In "Can we Stabilise the Price of a Cryptocurrency?" [@CanWeStabilize] Iwamura
et al. preset "Improved Bitcoin" (IBC). A theoretical currency where the reward
to the miners is adjusted based on the price. Iwamura argues that there is a need
for a mechanism of reducing circulating supply of the currency in case of a
negative demand shock. Just like Saito, Iwamura argues for allowing blocktime to
vary with mining power.

Since it is not possible to withdraw currency directly from the market, Iwamura
argues for some rate of inflation to absorb demand shocks. Iwamura argues for a
depreciation rate applied by gradually increasing the mining rewards.

# OLD DISCUSSION

Besides the papers describing techniques, some research has been done into
existing stablecoins, quantifying their prevalence, and discussing their
criticisms.

In [@DuffieDigital_and_Fast_Payment_Systems] Darrel Duffie describes the use of
stablecoins for banks aiming to digitise both inter-organisation value transfer
and governments wanting to implement a digital currency with the utility
benefits of cryptocurrencies and the stability of fiat.

Chohan discusses the difficulties in maintaining a properly collateralized peg
in "Are Stable Coins Stable?"[@Are_Stable_Coins_Stable]. Chohan describes how
maintaining a true 1:1 peg leads to funding and scalability issues.

In "The State of Stablecoins"[@THE_STATE_OF_STABLECOINS] the "blockchain team"
present an empirical study of 57 live and pre-launch stablecoins showing
adoption, trading volume and market cap. They describe a taxonomy where they
differentiate between "traditional" collateralized, crypto collateralized and
algorithmic. They describe many pros and cons of these types of coins. The
survey is very extensive and describes all 57 currencies in terms of their
investors, tech, legal structure and collateral format.

In "Stablecoins in Cryptoeconomics. From Initial Coin Offerings (ICOs) to
Central Bank Digital Currencies"[@Stablecoins_in_Cryptoeconomics] Erba discusses
the stablecoins in the context of the law in both the united states and Europe.
Erba argues for crypto-currencies "fully backed by Central Bank reserves"

In "Stablecoin: Yet Another Layer of Cryptocurrency
Complexity"[@Stablecoin:_Yet_Another_Layer_of_Cryptocurrency_Complexity] Lee
looks at the way that stablecoins can fit into the modern legal system. Lee
argues for Bankruptcy Courts to treat stablecoins as a commodity as opposed to a
currency.

In [@Fedcoin] Koning describes the requirements and considerations for a stable
currency controlled by a central bank. Koning describes the monetary policy and
choices that comes along with implementing a digital currency on a large scale.

In [@In_stability_for_the_Blockchain] Klages-Mundt et al. look at the existing
stablecoins through a critical lens and describe some ways in which the currency
pegs can be broken. Klages-Mundt build a generalised model of decentralised
crypto-collateralized stablecoins. It describes possible attacks on these
systems where the pegged currency is bid up so an extent where collateral starts
to get margin-called creating a run-away feedback loop.

