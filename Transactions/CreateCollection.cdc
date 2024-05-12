import CryptoPoops from 0x05
import NonFungibleToken from 0x06

transaction {

    prepare(account: AuthAccount) {

        account.save(<- CryptoPoops.createEmptyCollection(), to: /storage/Collection) 
        account.link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>(/public/Collection, target: /storage/Collection) 
    }

    execute {
        log("CryptoPoopsNFT Collection Deployed")
    }
}