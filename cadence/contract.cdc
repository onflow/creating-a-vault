// Creating an empty vault
access(all)
fun createEmptyVault(): @Vault {
    return <-create Vault(balance: 0.0)
}