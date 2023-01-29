# LaTeX Project Skeleton

[![GitHub Actions](https://github.com/makenew/latex-project/actions/workflows/check.yml/badge.svg)](https://github.com/makenew/latex-project/actions/workflows/check.yml)

Package skeleton for a LaTeX project.

## Description

Bootstrap a new LaTeX project in in five minutes or less.

### Features

- Build a [LaTeX] project with [Latexmk] and [XeLaTeX].
- Run development tasks from a simple [Makefile].
- Load external dependencies with [Bower].
- Build and release PDF artifacts with [GitHub Actions].
- Develop in the cloud with [GitHub Codespaces]
  using [LaTeX Workshop] in [Visual Studio Code].
- [Keep a CHANGELOG].
- Consistent coding with [EditorConfig].

[Bower]: https://bower.io/
[EditorConfig]: https://editorconfig.org/
[GitHub Actions]: https://github.com/features/actions
[GitHub Codespaces]: https://github.com/features/codespaces
[Keep a CHANGELOG]: https://keepachangelog.com/
[LaTeX]: https://www.latex-project.org/
[Latexmk]: https://www.ctan.org/pkg/latexmk/
[LaTeX Workshop]: https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop
[Makefile]: https://www.gnu.org/software/make/
[Visual Studio Code]: https://code.visualstudio.com/
[XeLaTeX]: https://ctan.org/pkg/xetex

### Bootstrapping a new project

1. Create an empty (**non-initialized**) repository on GitHub.
2. Clone the main branch of this repository with
   ```
   $ git clone --single-branch git@github.com:makenew/latex-project.git <new-latex-project>
   $ cd <new-latex-project>
   ```
   Optionally, reset to the latest version with
   ```
   $ git reset --hard <version-tag>
   ```
3. Run
   ```
   $ ./makenew.sh
   ```
   This will replace the boilerplate, delete itself,
   remove the git remote, remove upstream tags,
   and stage changes for commit.
4. Create the required GitHub repository secrets.
5. Review, commit, and push the changes to GitHub with
   ```
   $ git diff --cached
   $ git commit -m "Replace makenew boilerplate"
   $ git remote add origin git@github.com:<user>/<new-latex-project>.git
   $ git push -u origin main
   ```
6. Ensure the GitHub action passes,
   then publish the initial version of the package with
   ```
   $ npm install
   $ npm ver patch
   ```

### Updating from this skeleton

If you want to pull in future updates from this skeleton,
you can fetch and merge in changes from this repository.

Add this as a new remote with

```
$ git remote add upstream git@github.com:makenew/latex-project.git
```

You can then fetch and merge changes with

```
$ git fetch --no-tags upstream
$ git merge upstream/main
```

#### Changelog for this skeleton

Note that `CHANGELOG.md` is just a template for this skeleton.
The actual changes for this project are documented in the commit history
and summarized under [Releases].

[Releases]: https://github.com/makenew/latex-project/releases

## Development

### Quickstart

```
$ git clone https://github.com/makenew/latex-project.git
$ cd latex-project
$ npm install
$ make
```

## Requirements

- A modern [LaTeX] distribution, e.g., [TeX Live],
  packaged with [XeLaTeX], [Latexmk], and optionally [ChkTeX].
- [GNU Make].
- [Node.js] with [npm].
  Only required when using Bower for external dependencies.

[ChkTeX]: https://www.nongnu.org/chktex/
[GNU Make]: https://www.gnu.org/software/make/
[LaTeX]: https://www.latex-project.org/
[Latexmk]: https://www.ctan.org/pkg/latexmk/
[Node.js]: https://nodejs.org/
[npm]: https://npmjs.org/
[TeX Live]: https://www.tug.org/texlive/
[XeLaTeX]: https://ctan.org/pkg/xetex

## Development

Install any Node and Bower dependencies with

```
$ npm install
```

Build to `build/` with

```
$ make
```

Clean out temporary and build files with

```
$ make clean
```

Lint code with

```
$ make check
```

### Publishing

Simply create a new tag to trigger a GitHub action
which will create a GitHub Release with the generated PDFs.

- Directly from [GitHub Releases].
- Using Git with
  ```
  $ git tag --sign v1.2.3 -m v1.2.3
  $ git push --tags
  ```
- Using Bower with
  ```
  $ npm run ver 1.2.3
  ```

[GitHub Releases]: https://github.com/makenew/latex-project/releases/new

## GitHub Actions

_GitHub Actions should already be configured: this section is for reference only._

The following repository secrets must be set on [GitHub Actions]:

- `GH_TOKEN`: A personal access token for the user.

## Source Code

The [makenew-latex-project source] is hosted on GitHub.
Clone the project with

```
$ git clone https://github.com/makenew/latex-project.git
```

[makenew-latex-project source]: https://github.com/makenew/latex-project

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/makenew/latex-project/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

## License

This LaTeX project is licensed under the MIT license.

## Warranty

This software is provided by the copyright holders and contributors "as is" and
any express or implied warranties, including, but not limited to, the implied
warranties of merchantability and fitness for a particular purpose are
disclaimed. In no event shall the copyright holder or contributors be liable for
any direct, indirect, incidental, special, exemplary, or consequential damages
(including, but not limited to, procurement of substitute goods or services;
loss of use, data, or profits; or business interruption) however caused and on
any theory of liability, whether in contract, strict liability, or tort
(including negligence or otherwise) arising in any way out of the use of this
software, even if advised of the possibility of such damage.
