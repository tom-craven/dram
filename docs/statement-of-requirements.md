# Statement of Requirements

### Introduction


The role of an SoR is to define the scope, boundaries, and constraints of this project, and to
establish a shared understanding of what needs to be done, how it needs to be done, and why it needs
to be done. An SoR also aligns the expectations and interests of different stakeholders, and
to identifies and prioritizes the requirements that are most important to the success of the
project.

The deliverable for this phase is an MVP which can support moving to pre-product to market phase

---

### Stakeholder Requirements

A list of the needs, expectations, and requirements of the stakeholders who will be impacted by the
project.

### Stakeholders

#### <ins>Customer</ins>

The entity that is the end user of the system and will be using it to buy, sell, and invest in
whiskey investments

#### <ins>Dram</ins>

The entity that is the owner of the system and is responsible for its development and maintenance

#### <ins>Custodian</ins>

The entity that holds the asset and is responsible for its safekeeping

#### <ins>Regulator</ins>

The overseeing body of the legal framework the system resides in

#### <ins>investmenting Agent</ins>

The entity that is responsible for the purchase and sale of the whiskey investments

#80.209.178.67:80
---

### Requirements

A detailed specification of the functions and capabilities that the project must deliver.

##### <ins>f-1 Asset Tokenization *MVP*</ins>

1. The administrator must be able to tokenize an asset onto an NFT.
2. The administrator must be able to sell the NFT in a sale contract.

Described
by [Tokenise Whiskey investment Journey](/docs/functional-requirements/f-1-asset-tokenisation-journey.md)

##### <ins>f-2 Invest in Assets *MVP*</ins>

1. The customer must be able to invest in assets

Described by [Invest Journey](/docs/functional-requirements/f-2-asset-invest-journey.md)

##### <ins>f-3 Redeem Investment *MVP*</ins>

1. The customer must be able to redeem the assets for their current value in cryptocurrency.
   This provides a price floor which is representative of the current value of the asset and
   provides assurance that investment is sound.

Described [Redeem Investment Journey](/docs/functional-requirements/f-3-redeem-investment-journey.md)

##### <ins>f-4 Learn About Dram *MVP*</ins>

1. The customer must be able to find out information about Dram and the process of
   tokenization

Described by [Learn About Journey](/docs/functional-requirements/f-4-learn-about-journey.md)

##### <ins>f-5 Transfer Assets *MVP*</ins>

The customer must be able to transfer assets for trading in the secondary market or to
another customer.

Described by [Transfer Assets Journey](/docs/functional-requirements/f-5-transfer-asset-journey.md)

options for trading

- managed LP keeping the price stable
- buy side smart contract with price floor/oracle

##### <ins>f-6 Track Value of Assets *MVP*</ins>

1. The customer must be able to track the performance of asset(s)

Described by [Track Assets Journey](/docs/functional-requirements/f-6-track-asset-journey.md)

##### <ins>f-7 Receive ROI *MVP*</ins>

The customer must be able to receive yield from the asset. This may be achieved through and increase
in the floor price of the asset or through a
distribution of yield from the asset.

Described by [Receive ROI Journey](/docs/functional-requirements/f-7-recieve-roi-journey.md)

##### <ins>f-8 Signup/Login</ins>

Applies to customer and admin

1. The user must be able to signup to use the system
2. The user must be able to reset their password
3. The customer must be able to complete KYC

Described by [Signup Journey](/)

##### <ins>f-9 Join the community</ins>

1. The customer must be able to join the community through social media

Described by [Community Journey](/)

##### <ins>f-10 Join the Team</ins>

1. The user must be able to apply to start a career with Dram

Described by [Career Journey](/)

---

### Non-Functional Requirements

1. The system must be secured by Oauth

---

