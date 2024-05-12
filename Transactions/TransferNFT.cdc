import CryptoPoops from 0x05
import NonFungibleToken from 0x06

transaction(recipient: Address, id: UInt64) {

    prepare(signer: AuthAccount) {
        let collection = signer.borrow<&CryptoPoops.Collection>(from: /storage/Collection)!

        let receiverReference = getAccount(recipient).getCapability(/public/Collection)
                                            .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                                            ?? panic("This account does not have a Collection")

        let NFTIds = collection.getIDs();
        receiverReference.deposit(token: <- collection.withdraw(withdrawID: NFTIds[id]))

    }

    execute {
        log("transfer NFT")
    }
}