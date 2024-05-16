
-include .env

.PHONY: all test clean deploy fund help install snapshot format anvil
.PHONY: all test clean deploy fund help install snapshot format anvil

DEFAULT_ANVIL_KEY := 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

@@ -25,7 +25,7 @@ update:; forge update

build:; forge build

test :; forge test
test :; forge test

snapshot :; forge snapshot

@@ -42,8 +42,8 @@ endif
deploy:
	@forge script script/DeployFundMe.s.sol:DeployFundMe $(NETWORK_ARGS)

// For deploying Interactions.s.sol:FundFundMe as well as for Interactions.s.sol:WithdrawFundMe we have to include a sender's address `--sender <ADDRESS>`
SENDER_ADDRESS := <sender's address>
# For deploying Interactions.s.sol:FundFundMe as well as for Interactions.s.sol:WithdrawFundMe we have to include a sender's address `--sender <ADDRESS>`
SENDER_ADDRESS := <sender's address>

fund:
	@forge script script/Interactions.s.sol:FundFundMe --sender $(SENDER_ADDRESS) $(NETWORK_ARGS)
withdraw:
	@forge script script/Interactions.s.sol:WithdrawFundMe --sender $(SENDER_ADDRESS) $(NETWORK_ARGS)
