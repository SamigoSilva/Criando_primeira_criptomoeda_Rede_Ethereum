async function main() {
  const [deployer] = await ethers.getSigners();
  const DIO = await ethers.getContractFactory("DIOToken");
  const token = await DIO.deploy();
  console.log("Token deployed to:", token.address);
}
