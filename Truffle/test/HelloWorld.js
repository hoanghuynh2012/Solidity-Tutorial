const HelloWorld = artifacts.require('HelloWorld')

contract("HelloWorld", (accounts) => {

  it("should return my name", async () => {
    const instance = await HelloWorld.deployed()
    const value = await instance.getMyName.call()

    assert.equal(value, "Hello World!");
  })
   // Add this test:
   it("should change my name", async () => {
    const instance = await HelloWorld.deployed()
    await instance.changeMyName("Huynh")
    const value = await instance.getMyName.call()

    assert.equal(value, "Huynh")
  })
})