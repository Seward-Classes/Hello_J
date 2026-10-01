# Hello J

This repository is a ready-to-run J workspace. Open it in a GitHub Codespace and the environment installs J 9.7.1, J syntax highlighting, and a Run Code play button for `.ijs` files.

## Run the example

1. Create a Codespace for this repository. On first creation, wait for the container setup to finish.
2. Open [`examples/features.ijs`](examples/features.ijs).
3. Select the play button in the editor title bar. Output appears in the integrated terminal.

You can also run a file from the terminal:

```sh
bash .devcontainer/run-j.sh examples/features.ijs
```

The runner executes the file and exits J when it is done. For an interactive J session, run `jconsole` in the terminal.

## J basics

J is an array-oriented language. Numbers and strings are commonly handled as arrays, and many operations work on an entire array at once. J evaluates expressions from right to left; parentheses can make grouping explicit.

```j
2 * 3 + 4      NB. 2 * (3 + 4), which is 14
10 20 30 + 1   NB. add 1 to every item
```

J calls functions *verbs*. A number of verbs are built from compact primitives: `+` adds, `#` counts or copies, and `i.` generates integers. Adverbs modify verbs: `+/` adds an array, while `+"1` applies addition across rows. J also supports tacit definitions, where verbs are composed without naming their arguments, and explicit definitions that use `y` for the right argument and `x` for the left.

The example demonstrates numeric arrays, a tacit average verb, boolean selection, a matrix, rank (`"1`), and an explicit verb. Try changing the values and running it again.

## Codespaces setup

The devcontainer downloads the official J 9.7.1 Linux distribution from [Jsoftware](https://www.jsoftware.com/download/j9.7/install/), installs this workspace's small J grammar extension, and installs the Marketplace Code Runner extension for the editor play button. The `jconsole` name in the devcontainer points to J; this avoids confusion with Java's unrelated executable of the same name.

## Documentation

- [J documentation wiki](https://code.jsoftware.com/wiki/Documentation)
- [J Dictionary](https://www.jsoftware.com/help/dictionary/dictionary.htm)
- [Jsoftware downloads](https://www.jsoftware.com/download/)
# Hello_J