// Pass the repo name
const recipe = "creating-a-vault";

//Generate paths of each code file to render
const contractPath = `${recipe}/cadence/contract.cdc`;
const transactionPath = `${recipe}/cadence/transaction.cdc`;

//Generate paths of each explanation file to render
const smartContractExplanationPath = `${recipe}/explanations/contract.txt`;
const transactionExplanationPath = `${recipe}/explanations/transaction.txt`;

export const creatingAVault = {
  slug: recipe,
  title: "Creating a Vault",
  createdAt: new Date(2022, 3, 1),
  author: "Flow Blockchain",
  playgroundLink:
    "https://play.onflow.org/ef2fe054-148b-4c75-94f1-95bd33b6ce00?type=tx&id=1629c020-d908-475e-87db-c81d1c496964",
  excerpt:
    "This explains the function that would be used for you to create a new vault in others accounts.",
  smartContractCode: contractPath,
  smartContractExplanation: smartContractExplanationPath,
  transactionCode: transactionPath,
  transactionExplanation: transactionExplanationPath,
  filters: {
    difficulty: "intermediate",
  },
};
