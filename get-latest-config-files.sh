BASELINK="https://hydra.iohk.io/job/Cardano/cardano-node/cardano-deployment/latest-finished/download/1/"

echo "Saving config files to ${PWD}/config"
mkdir -p config

# Shelley Testnet
echo "Downloading shelley_testnet files..."
curl -sSL ${BASELINK}testnet-config.json -o config/testnet-config.json
curl -sSL ${BASELINK}testnet-shelley-genesis.json -o config/testnet-shelley-genesis.json
curl -sSL ${BASELINK}testnet-byron-genesis.json -o config/testnet-byron-genesis.json
curl -sSL ${BASELINK}testnet-topology.json -o config/testnet-topology.json

# # Mainnet
echo "Downloading mainnet files..."
curl -sSL ${BASELINK}mainnet-config.json > config/config.json
curl -sSL ${BASELINK}mainnet-byron-genesis.json > config/mainnet-byron-genesis.json
curl -sSL ${BASELINK}mainnet-shelley-genesis.json > config/mainnet-shelley-genesis.json
curl -sSL ${BASELINK}mainnet-topology.json > config/topology.json
