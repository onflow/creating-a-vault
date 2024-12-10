
import "FlowToken"

access(all) contract Recipe {
    // Creating an empty vault
    access(all)
    fun createEmptyVault(): @FlowToken.Vault {
        return <-create FlowToken.Vault(balance: 0.0)
    }
}