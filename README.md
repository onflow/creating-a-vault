# Cadence Cookbook Recipe: Creating a Vault

### What is this recipe about?

This explains the function that would be used for you to create a new vault in others accounts.

## Table of Contents

- [Description](#description)
- [What is included in this repository?](#what-is-included-in-this-repository)
- [Supported Recipe Data](#recipe-data)
- [License](#license)

## Description

### What is the Cadence Cookbook?

The Cadence Cookbook is a collection of code examples, recipes, and tutorials designed to help developers learn and understand the Cadence programming language. Cadence is the smart contract programming language used on the Flow blockchain. Whether you are new to Flow or an experienced blockchain developer, the Cadence Cookbook serves as a valuable resource to explore various aspects of Cadence and its applications in building dApps on the Flow blockchain.

Each recipe in the Cadence Cookbook is a practical coding example that showcases a specific aspect of Cadence or use-case on Flow, including smart contract development, interaction, and best practices. By following these recipes, you can gain hands-on experience and learn how to leverage Cadence for your blockchain projects.


### Contributing to the Cadence Cookbook

Learn more about the contribution process [here](https://github.com/onflow/cadence-cookbook/blob/main/contribute.md).

## What is included in this repository?

Each recipe repository is subdivided into 2 main sections, Cadence code files (.cdc) under the `/cadence` directory, and explanation files (.txt) under the `/explanations` directory.

The Cadence Cookbook supports Cadence code and explanations for the contract, transaction, and testing elements of each recipe.

Recipe metadata, such as title, author, and category labels, is stored in `index.js`. Each recipe also includes a link to a live, runnable example of the corresponding code in the [Flow Playground](https://play.flow.com).

```
recipe-name/
├── cadence/              # Cadence files for recipe examples
│   ├── contract.cdc          # Contract code
│   ├── transaction.cdc          # Transaction code
│   ├── tests.cdc          # Tests code
├── explanations/         # Explanation files for recipe examples
│   ├── contract.txt          # Contract code explanation
│    ├── transaction.txt          # Transaction code explanation
│    ├── tests.txt         # Tests code explanation
├── index.js        # Root file for storing recipe metadata
├── README.md             # This README file
└── LICENSE               # License information
```

## Supported Recipe Data

- `const recipe`: defines a unique identifier (slug) for the recipe
- `title`: indicates the title of the recipe
- `featuredText`(optional): a subheading for the recipe title
- `coverUrl` (optional): path to a featured cover image for the recipe
- `createdAt`: date on which recipe was added to the Cadence Cookbook
- `author`: contributor of the recipe
- `playgroundLink`: a link to Flow Playground containing the deployed recipe code
- `excerpt`: a brief description of the recipe contents
- `filters`: the filters object is used to perform filtering on recipes in the cookbook
    - `difficulty`: the difficulty filter supports one of ['beginner', 'intermediate', 'advanced']


```
// Pass the repo name
const recipe = "sample-recipe-name";

export const sampleRecipe= {
  slug: recipe,
  title: "",
  featuredText: "",
  createdAt: Date(2022, 3, 1),
  author: "",
  playgroundLink: "",
  excerpt: "",
};
```

## License

This repository is licensed under the [MIT License](LICENSE).