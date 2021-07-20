const test = artifacts.require("test");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("test", function (/* accounts */) {
  it("should assert true", async function () {
    await test.deployed();
    return assert.isTrue(true);
  });
});
