pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/NinetyEightC.sol";

contract TestNinetyEightC {

  function testInitialBalanceUsingDeployedContract() {
    NinetyEightC meta = NinetyEightC(DeployedAddresses.NinetyEightC());

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 NinetyEightC initially");
  }

  function testInitialBalanceWithNewNinetyEightC() {
    NinetyEightC meta = new NinetyEightC();

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 NinetyEightC initially");
  }

}
