---
title: |
    | Financial Derivatives on the Blockchain or
    | How to Stabilise a Crypto Currency
    | A Literature Survey
date: \today
author:
  - name: Robert Wessel Blokzijl
    affiliation: TU Delft
    location: Delft, The Netherlands
    email: R.W.Blokzijl@student.tudelft.nl
keywords:
  - Stablecoin
  - Blockchain
  - Cryptocurrencies
numbersections: yes
lang: en
babel-lang: english
abstract: |
  This is the abstract.

  It is not done yet

---

# Introduction

Cryptocurrencies have so far been notoriously volatile in price. The price of
the largest coins have traditionally been susceptible to changes in both supply
and demand. Making the assets unsuited for both investments in the long term,
and payments in the short term.

As a result of these problems with the first cryptocurrencies of the world, many
new coins have popped up that aim to fill the demand of a digital currency that
has both the fast and secure payment features of traditional cryptocurrencies
and the price stability of the currencies of the old world.

A current need for these currencies exists on crypto exchanges. When the
crypto-markets have a decrease in price, the entire market tends to do so. In
this case traders want to move their assets out of the volatile digital assets
and into traditional currencies like the Dollar. However these transactions are
limited by the speed of the old payment networks. A coin that is stable with
respect to the US Dollar would solve this problem by allowing traders to
change positions between the Dollar and crypto currencies.

As of the writing this survey, the 5th largest cryptocurrency by market cap is a
stablecoin called Tether [@Tether:whitepaper]. Tether is a cryptocurrency that
though successful is doused in controversy with criticism leveled at their
centralised infrastructure.

With the proven success of Tether, many cryptocurrencies have followed, some
solving problems of those who have come before. MakerDAOs DAI
[@MakerDAO:whitepaper], currently the 5th biggest stablecoin and the 57th
biggest cryptocurrency with a market cap of 93 million USD, aims to be a fully
decentralised stablecoin that maintains a value of 1 USD.

In this survey we aim to show a history of the significant stablecoins invented
so far, and to classify and generalise of the techniques that are common among
them.

First we discuss the topic of the purpose of money, the meaning of value and
stability, and some currency pegs used in our traditional monetary system in
Chapter 2. We then describe the simplest and most successful stablecoins, namely
the centralised coins in Chapter 3. In Chapter 4 we go into the more complex
topic of decentralised stablecoins and their methods for maintaning pegs without
a central party guaranteeing the peg. We then go deeper into the theory in
Chapter 5 where we look at the research into the viability of stablecoins. We
then end with a discussion of the research on stablecoins in Chapter 6 and a
conclusion of the survey in Chapter 7.

# A Brief History of Currency Stabilisation
TODO

## The purpose of money,

TODO:

Money has traditionally had the following requirements:

 - Scarcity
 - Fungibility - No coin is "better" than another
 - Divisibility
 - Durability
 - Transferability


## The meaning of value and stability,


## Making a market

The pegging of a token to an asset can be achieved by allowing investors to
trade the token for the asset at any time. Note that a this may involve the
trade of a secondary asset as intermediary store of value.

The most common way to guarantee an exchange rate is to hold some form of
collateral. The most obvious collateral for the token, is the asset it is pegged
to, but this can also be another commodity that can be traded for the asset at
any time. Ofcourse this requires some guarantees or assumtions about the price
stability of this commodity to ensure that all outstanding tokens can be
redeemed. If the amount of collateral, or the value of the collateral, is such
that less that 100% of tokens can be redeemed for the original asset, the token
is considered under-collateralised. This can have large ramifications to
investor trust, and might thus undermine the stability of the coin and the
viability of the network.

Any entity or system that facilitates the exchange of the token for the
collateral is called a market maker. In this survey two main categories of
market makers will make an apprearance, centralised organisations and
decentralised systems.

# Stabilisation by Centralisation

Maintaining a stable price is hard to define in genral rules and thus the
simplest way to create a stable currency is to simply have an organisation
guarantee that it is. Where the US Dollar is guaranteed to be stable by the
Federal Reserve increasing and decreasing supply to match the demand,
centralised stablecoins tend to do something similar.


## Stabilised by reputation

A mostly theoretical way of creating a stablecoin is to simply promise as an
organisation that your coin is going to be stable. This is the presumably the
approach taken by JPMorgan Coin [@JPMorgan_Coin:whitepaper] and Libra
[@Libra:whitepaper]. Whereas JPMorgan Coin, aims to provide fast
inter-organisation value transfer backed by JPMorgan as a traditional financial
product with a digital spin, Libra aims to be a replacement for traditional fiat
currencies while not being backed by any type of collateral.


## Pegged by currency reserves

Since stabilisation by reputation is often not good enough for investors looking
for a safe way to store their value a more secure stablecoin is needed. The
simplest way to do this is to simply peg the cryptocurrency to another currency
by guaranteeing a 1:1 exchange rate while holding enough collateral in order to
do so.

The most successful currency to do so and the 5th largest cryptocurrency as of
writing this survey is Tether [@Tether:whitepaper]. Tether maintains a 1:1 peg
to the US dollar by simply issuing 1 Tether for every Dollar payed to them. They
hold the USD and will at any time buy the Tether back at 1 Dollar price. This
intensives the 1:1 peg outside of the official Tether exchange as well as any
investor able to buy Tether at under a Dollar can immediately sell it to the
Tether organisation for profit thus reducing supply on the open market when
demand drops. On the other hand, an investor able to sell a Tether for over a
dollar can make a profit by buying newly minted Tether thus increasing supply
when demand increases.

As mentioned, Tether is currently the largest stablecoin, however its
centralised reserves draw controversy that reduces investor trust. An
improvement on this concept is to have multiple holders of the currency with
frequent audits to increase trust in the organisations that are making the
market. TrueUSD [@TrueUSD:whitepaper] holds collateral in multiple escrows and
is audited by third party as a result they used to be 2nd largest coin before
being overtaken by USD Coin (USDC). USDC is a USD pegged stablecoin created by
CENTRE [@Centre:whitepaper] a joint venture of the exchanges Coinbase and
Circle which also holds their collateral in multiple audited accounts.

The next level of trust that a stablecoin can guarantee comes from the
government. PAXos [@PAXos:whitepaper], though having centralised reserves, is
licensed and approved by New York State Department of Financial Services and has
secured FDIC-insurance. This has won the favor of investors as they are now the
3rd largest stablecoin after Tether and Centre.

The largest current Euro coin is the Stasis euro [@Stasis:whitepaper]. It
represents over 31 million euros currently and has maintained its peg since its
launch in December 2018. Stasis has built a network of liquidity providers and
is thus not the market maker themselves.

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



# Stabilised while Decentralised

Though many centralised stablecoins are becoming more deversified in their
collateralization, a central point of failure remains in the organisations.
The risk is depletion of collateral by market maker failure is always prevalent
and there are so far no mechanisms for restoring collatoral back to 100% when a
failure does occur. As a reslonse to this problem decentralised stablecoins have
emerged.

## Collateralized

Just like centralised stable coins the most succesful stablecoins are
collateralised in some maner. The difference between them is that decentralised
collatoral comes in the form of other crypto currencies. Even though the
collatoral is not pegged to the US dollar, MakerDAO's Dai [@MakerDAO:whitepaper],
BitShares' BitUSD,
[@BitShares:whitepaper]

### Development over time

[BitShares](https://www.bitshares.foundation/articles/2018-06-01-bitshareswhitepaper)
[@BitShares:whitepaper]
bitusd is a token for speculating on bitshares uses CDP like structure

[MakerDAO](https://makerdao.com/whitepaper/DaiDec17WP.pdf)
[@MakerDAO:whitepaper]
DAO, pegged to dollar, CDP accepting ether, plans to add Digix gold CDPs, gets
margin called when under collateralized, governance token is printed and sold as
last resort

[Havven](https://www.synthetix.io/uploads/havven_whitepaper.pdf)
[@Havven:whitepaper]
generalises stablecoin to tracking of offchain trackers, now synthetix, hold
singe collatoral pool of "SNX", allows exchanes between any tracked asset

[@EOSDT:whitepaper]

### Dependencies
[Chainlink](https://link.smartcontract.com/whitepaper) oracle
[@Chainlink:whitepaper]

[@Oraclize:whitepaper]

### TODO Fit into the story
[EOSDT]()

### Domain Specific

[@Steem_dollar:whitepaper]


[Steem dollar](https://steem.com/steem-whitepaper.pdf)
Steem-dollars are used for storing proceeds on the steemit network, redeemable
for 1 dollar worth of newly minted STEEM with a weeks delay

## Algorithmic

### Theory

Stabilising is not pegging...

Changing parameters to make the currecy respond dynamically to price changes...

#### Indicators of price changes: Supply
Hash rate

#### Indicators of price changes: Demand
Transaction fees

#### TODO:

[@How_to_make_a_digital_currency_on_a_blockchain_stable]


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

#### TODO:

[@Nubits:whitepaper]
[@Ampleforth:whitepaper]
[@Anchor:whitepaper]
[@Basis:whitepaper]
[@BitBay:whitepaper]


[Nubits](https://nubits.com/whitepaper)
First Stablecoin to be stable for a year, incetivises holders to park currency
during low demand, Democratic DAO, failed after a demand shock in 2016,
recovered, failed again, never recovered again

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

## hm

[@Are_Stable_Coins_Stable]
[@DuffieDigital_and_Fast_Payment_Systems]
[@Money_as_IOUs_in_Social_Trust_Networks]
[@CanWeStabilize]
[@TrustChain]
[@THE_STATE_OF_STABLECOINS]
[@Stablecoins_in_Cryptoeconomics]
[@Stablecoin:_Yet_Another_Layer_of_Cryptocurrency_Complexity]
[@In_stability_for_the_Blockchain]
[@Elasticoin_Low-Volatility_PoSW]
[@Designing_Stable_Coins:whitepaper]
[Fedcoin_Central_Bank_R3.pdf](https://www.r3.com/reports/fedcoin-a-central-bank-issued-cryptocurrency/)
[@Fedcoin]


 - [Are Stable Coins Stable?](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3326823)

 - [DuffieDigital and Fast Payment Systems](https://www.darrellduffie.com/uploads/policy/DuffieDigitalPaymentsMay2019.pdf)
 - [Money as IOUs in Social Trust Networks](https://www.researchgate.net/publication/228729340_Money_as_IOUs_in_Social_Trust_Networks_and_a_Proposal_for_a_Decentralized_Currency_Network_Protocol)
 - [Can We Stabilize the Price of a Cryptocurrency?: Understanding the Design of Bitcoin and Its Potential to Compete with Central Bank Money](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2519367)
 - [TrustChain](https://ieeexplore.ieee.org/document/8696786)
 - [THE STATE OF STABLECOINS](https://www.blockchain.com/ru/static/pdf/StablecoinsReportFinal.pdf)
 - [Stablecoins in Cryptoeconomics. From Initial Coin Offerings (ICOs) to Central Bank Digital Currencies (CBDCs)](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3385840)
 - [Stablecoin: Yet Another Layer of Cryptocurrency Complexity](https://search.proquest.com/docview/2287330661?pq-origsite=gscholar)
 - [(In)stability for the Blockchain: Deleveraging Spirals and Stablecoin Attacks](https://arxiv.org/abs/1906.02152)
 - [Elasticoin: Low-Volatility PoSW](https://ieeexplore.ieee.org/document/8751402/)
 - [Designing Stable Coins](https://duo.network/papers/duo_academic_white_paper.pdf)

# Coins to investigate

[@Minex:whitepaper]
[@Carbon:whitepaper]
[@Augmint:whitepaper]
[@AuroraDAO:whitepaper]

 - [minex](https://minexcoin.com/html/download/wpeng.pdf)
 - [carbon](https://www.carbon.money/whitepaper.pdf)
 - [augmint](https://docs.google.com/document/d/1IQwGEsImpAv2Nlz5IgU_iCJkEqlM2VUHf5SFkcvb80A/edit?usp=sharing)
 - [AuroraDAO](https://auroradao.com/whitepaper/Aurora-Labs-Whitepaper-V0.9.7.pdf)


# Discussion

## Centralisation

## Decentralisation

### Complexity and Ease of Use

### Reliance on pricefeeds

## Attacks

### George Soros

## Trading risk without Centralisation

# Conclusion

This is a citation [@AreStabl89:online].

# Future research

## Crypto derivatives

# References

