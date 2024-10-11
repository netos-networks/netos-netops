# Contributing to Netos Labs

Thank you for considering contributing to Netos Netbox Deployment Project! Your contributions are highly appreciated. To make the contribution process smooth and effective, please follow these guidelines.

## Table of Contents
1. [Getting Started](#getting-started)
2. [How to Contribute](#how-to-contribute)
   - [Reporting Bugs](#reporting-bugs)
   - [Requesting Features](#requesting-features)
   - [Code Contributions](#code-contributions)
3. [Code Style Guidelines](#code-style-guidelines)
4. [Testing](#testing)
5. [Documentation](#documentation)
6. [Code of Conduct](#code-of-conduct)

## Getting Started

1. Fork the repository on GitHub.
2. Clone your forked repository:
    ```bash
    git clone https://github.com/netos-networks/netos-netops.git
    ```
3. Create a new branch for your changes:
    ```bash
    git checkout -b feature/your-feature-name
    ```

## How to Contribute

### Reporting Bugs

If you find a bug in the project, please report it by [creating an issue](https://github.com/netos-networks/netos-netops.git/-/issues) and use the `Bug Report` template. Be sure to include as much detail as possible, such as:
- Steps to reproduce the issue
- Expected and actual behavior
- Screenshots or logs if applicable
- Your environment (OS, version, etc.)

### Requesting Features

If you have an idea for a new feature, we'd love to hear about it! Please submit a [feature request](https://github.com/netos-networks/netos-netops.git/-/issues) using the `Feature Request` template, providing:
- A clear description of the feature
- The problem it solves or the use case
- Any potential alternatives considered

### Code Contributions

1. **Work on an Open Issue**: Check the [issues page](https://github.com/netos-networks/netos-netops.git/-/issues) for open issues, especially those labeled as `good first issue` or `help wanted`.

2. **Create a New Issue**: If you plan to work on something that is not yet an open issue, please [create a new issue](https://github.com/netos-networks/netos-netops.git/-/issues) first to discuss it with the maintainers.

3. **Commit Guidelines**: 
    - Write clear, concise commit messages.
    - Group related changes into a single commit.

    Example commit message:
    ```
    Fix issue with user authentication (#123)
    ```

4. **Create a Pull Request (PR)**:
    - Push your branch to your forked repository.
    - Create a pull request from your branch to the `main` branch of this repository.
    - Link the PR to the issue it addresses by using keywords like `Closes #123` in the PR description.
    - Use the appropriate [merge request template](.gitlab/merge_request_templates) for your PR.

## Code Style Guidelines

To maintain code consistency, please follow these style guidelines:
- Use [specific language or framework style guide] (e.g., PEP 8 for Python, ESLint for JavaScript).
- Write meaningful variable and function names.
- Include comments where necessary, especially for complex logic.

## Testing

Ensure that your code passes all tests before submitting a PR:
- Add tests for any new functionality.
- Run existing tests to ensure nothing is broken:
    ```bash
    # Command to run tests, e.g.,
    npm test
    ```

## Documentation

Update the documentation to reflect your changes:
- Add new or update existing documentation in the `docs/` directory.
- If you’re making UI changes, update screenshots or GIFs in the relevant documentation.

