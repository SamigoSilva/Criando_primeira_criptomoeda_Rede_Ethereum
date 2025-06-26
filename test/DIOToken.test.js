const { expect } = require("chai");

describe("DIOToken", function () {
  let DIO, owner, addr1;

  beforeEach(async () => {
    [owner, addr1] = await ethers.getSigners();
    DIO = await ethers.getContractFactory("DIOToken");
    const token = await DIO.deploy();
  });

  it("Should mint initial supply to deployer", async () => {
    expect(await token.balanceOf(owner.address)).to.equal(10n * 10n**18n);
  });

  it("Only owner can mint", async () => {
    await expect(token.connect(addr1).mint(addr1.address, 100))
      .to.be.revertedWith("Ownable: caller is not the owner");
  });
});
