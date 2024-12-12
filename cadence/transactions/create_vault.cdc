import "ExampleToken"

// This transaction configures an account to store and receive tokens defined by
// the ExampleToken contract.
transaction {
    prepare(acct: auth(Storage, Capabilities) &Account) {
        // Create a new empty Vault object
        let vaultA <- ExampleToken.createEmptyVault()
            
        // Store the vault in the account storage
        acct.storage.save<@ExampleToken.Vault>(<-vaultA, to: /storage/MainVault)

        log("Empty Vault stored")

        // Create a public capability to the Vault for the Receiver interface
        let receiverCap = acct.capabilities.storage.issue<&ExampleToken.Vault>(/storage/MainVault)
        acct.capabilities.publish(receiverCap, at: /public/MainReceiver)

        log("Receiver capability created")

        // Create a public capability to the Vault for the Balance interface
        let balanceCap = acct.capabilities.storage.issue<&ExampleToken.Vault>(/storage/MainVault)
        acct.capabilities.publish(balanceCap, at: /public/MainBalance)

        log("Balance capability created")

        // Check that the capabilities were created correctly
        let account = getAccount(acct.address)
        assert(account.capabilities.borrow<&ExampleToken.Vault>(/public/MainReceiver) != nil, 
               message: "Vault Receiver Reference was not created correctly")
    }
}
