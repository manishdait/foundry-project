# foundry-project

A simple demo project built with Foundry for learning Solidity smart contract development.

## Getting Started

### Install Foundry

```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

## Commands


1. **Create a New Foundry Project**

```bash
forge init foundary-project
```
Creates a new Foundry project with the default project structure.

2. **Build Contracts**
```bash
  forge build
```
Compiles all smart contracts inside the `src/` directory.

3. **Run Tests**

```bash
forge test
```
Runs all Solidity tests inside the `test/` directory.

4. **Format Code**

```bash
forge fmt
```
Formats Solidity files using Foundry's formatter.

5. **Deploy Contracts**

```bash
forge script script/Deploy.s.sol --rpc-url <RPC_URL> --private-key <PRIVATE_KEY> --broadcast

# Locally using anvil
  forge script script/Deploy.s.sol --fork-url <RPC_URL> --private-key <PRIVATE_KEY> --broadcast
```

Deploys contracts to the configured blockchain network.

6. **Clean Build Files**

```bash
forge clean
```

Removes build artifacts and cache files.

7. **Install Dependencies**

```bash
forge install
```
Installs dependencies defined in the project.

## Resources
- [Foundry Docs](https://www.getfoundry.sh/introduction/getting-started)
- [Solidity Examples](https://solidity-by-example.org/app) 