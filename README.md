🔷 1. DEPLOYMENT STEPS (USING REMIX + METAMASK)
✅ Prerequisites:
MetaMask wallet connected to Goerli Testnet

Goerli ETH from a faucet: https://goerlifaucet.com/

Remix IDE: https://remix.ethereum.org

⚙️ Step-by-Step Deployment:
Step 1: Open Remix and Create the File
Open Remix IDE.

Create a new file: MyCustomToken.sol.

Paste the contract code above.

Step 2: Enable OpenZeppelin Library
Go to File Explorers → right-click and select “Import”.

Type:

nginx
Copy
Edit
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
Remix automatically fetches it using Remix’s built-in package manager.

Step 3: Compile
Go to Solidity Compiler tab.

Use version 0.8.20 or compatible.

Click Compile MyCustomToken.sol.

Step 4: Connect MetaMask
Go to Deploy & Run Transactions.

Set Environment: Injected Provider - MetaMask.

Ensure MetaMask is on Goerli Testnet.

Step 5: Deploy
Enter initial supply (e.g., 1000000).

Click Deploy.

Confirm transaction in MetaMask.

🔷 2. VERIFY DEPLOYMENT
✅ After Deployment:
The contract appears under Deployed Contracts.

Use totalSupply() to check the token supply.

Use balanceOf(address) to check your wallet’s balance.

✅ Deployment Proof:
Go to https://goerli.etherscan.io

Paste your contract address to verify deployment.

You’ll see contract creation + token tracker.

🧪 Optional: Verify the Contract on Etherscan
Get your contract address after deployment.

Go to Goerli Etherscan.

Click Verify and Publish Contract.

Paste your contract code, set compiler version, and select Yes for optimization (if used).

