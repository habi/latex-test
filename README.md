# Testing GitHub Actions

This repository is used to test the GitHub action for [compiling a LaTeX document](https://github.com/xu-cheng/latex-action).
Thanks to a lot of help of @xucheng over at [reddit](https://www.reddit.com/r/LaTeX/comments/cudaqz/github_actions_to_compile_latex_documents/) I managed to get it up and running from scratch.

Here's what *you* need to do if you want to compile your LaTeX document in the cloud with [GitHub Actions](https://github.com/actions/).

- Sign up for GitHub Actions and turn them on for a repository containing your [LaTeX](https://www.latex-project.org/) code
- I assume you want to have the generate PDF in the same repository as the one you're working on [1]
- Generate a `gh-pages` branch for your repository and make sure it's being served by [GitHub pages](https://pages.github.com/) by going to 'Settings' > 'Options' in your repository
- Generate an SSH key to use for deployment:
  - Do this with
  ```bash
  cd && mkdir tmp && cd tmp
  ssh-keygen -t ed25519 -o -a 100 -f actions_key
    ```
  - Go to 'Settings' > 'Deploy keys' and copy the contents of the public key (`actions_key.pub`) to the form field.
  - Go to 'Settings' > 'Secrets' and copy the contents of the private key (`actions_key`) to a new secret. Name this secred `DEPLOY_KEY`.
    This makes sure that the key is correctly picked up by the GitHub Action below.
- Copy the [`main.yaml` file from Xu](https://github.com/xu-cheng/latex-tutorial-slides/blob/master/.github/workflows/main.yml) to `$your_repository/.github/workflows/main.yaml`.
  You can name the file however you want.
  Change the settings in the file relating to your Git `user.name`and `user.email`.
  Also take care that the file name of the LaTeX file is the same as the one you actually use in your repository.
- Commit a good version of your LaTeX file and wait a bit
- Enjoy your automatically built PDF at [$username.github.io/$your_repository/main.pdf ](habi.github.io/latex-test/main.pdf)

[1]: If not, see [here](https://github.com/xu-cheng/cv/blob/master/.github/workflows/main.yml)...
