const hre = require("hardhat");

async function main() {
  const contract = await hre.ethers.deployContract("Contract");

  await contract.waitForDeployment();

  console.log(`ETH will be deployed to ${contract.target}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
