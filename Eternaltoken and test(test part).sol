pragma solidity ^0.6.0;

const EternalToken = artifacts.require("EternalToken");
const utils = require("./helpers/utils");
const expect = require('chai').expect;

contract ("EternalToken", (accounts) => {
    let [alice, bob] = accounts;

    const NAME = "EternalToken";
    const SYMBOL = "ESS";
    const TOTAL_SUPPLY = new BN("10000000000000");

    let contractInstance;
    beforeEach(async () => {
        contractInstance = await EternalToken.new(NAME, SYMBOL, TOTAL_SUPPLY)
    });

    afterEach(async () => {
        await contractInstance.kill();
    });

    it('should return a previously stored value', async () => {
    expect(await contractInstance.totalSupply()).to.bignumber.equal(TOTAL_SUPPLY);
    })

    it('has a name', async () => {
    expect(await contractInstance.name()).to.equal(NAME);
  });
    
    it('has a symbol', async () => {
    expect(await contractInstance.symbol()).to.equal(SYMBOL);
  });

    it('should return total supply', async () => {
    expect(await contractInstance.totalSupply()).to.bignumber.equal(TOTAL_SUPPLY);
    });
    
    it("should check balance", async function() {
    expect(await contractInstance.balanceOf(alice)).to.equal(web3.eth.getBalance(contractInstance.address.alice))
    }); 

    it('should return the amount allowed to transfer', async () => {
    expect(await contractInstance.allowance(alice, bob).to.equal(amount)
    }); 

    it('should transfer choosen amount of tokens', async() => {
    await contractInstance.transfer(alice, bob, amount, {from: alice});
    });

    it('should approve and transfer tokens when the approved address calls transferFrom', async() => {
    await contractInstance.transfer(alice, bob, amount, {from: alice});
    await contractInstance.approve(bob, amount);
    await contractInstance.transferFrom(alice, bob, zombieId, {from: bob});
    from_balance = token.balanceOf(alice)
    to_balance = token.balanceOf(bob)
    token.transfer(bob, amount, {'from': alice)
    expect(token.balanceOf(alice)).to.equal(from_balance - amount);
    expect(token.balanceOf(bob)).to.equal(to_balance + amount);
    });

    it('should transfer tokens when the sender calls transferFrom', async() => {
    await contractInstance.transfer(alice, bob, amount, {from: alice});
    await contractInstance.approve(bob, amount);
    await contractInstance.transferFrom(alice, bob, zombieId, {from: alice});
    from_balance = token.balanceOf(alice)
    to_balance = token.balanceOf(bob)
    token.transfer(bob, amount, {'from': alice)
    expect(token.balanceOf(alice)).to.equal(from_balance - amount);
    expect(token.balanceOf(bob)).to.equal(to_balance + amount);
    });
   });
