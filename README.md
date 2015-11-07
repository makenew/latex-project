# LaTeX Project Skeleton

[![Release](https://img.shields.io/github/release/makenew/latex-project.svg)](https://github.com/makenew/latex-project/releases)
[![License](https://img.shields.io/github/license/makenew/latex-project.svg)](./LICENSE.txt)

## Description

### Features

* Run build and development tasks from a simple Makefile.
* Autobuild on changes with [Watchy].
* [Bower] for external dependencies.
* [EditorConfig].
* Badges from [Shields.io].

[Bower]: http://bower.io/
[EditorConfig]: http://editorconfig.org/
[Grunt]: http://gruntjs.com/
[npm]: https://www.npmjs.com/
[Shields.io]: http://shields.io/
[Watchy]: https://github.com/caseywebdev/watchy

### Usage

This software can be used freely, see [The Unlicense].
The copyright text appearing in this software is for
demonstration purposes only and does not apply to this software.

1. Clone this repository or download a [release][Releases].

2. Customize this README.
   - Set the title.
   - Replace the Description section.
   - Update the Source section.
   - Update the Contributing section.
   - Customize the badges.
   - [Choose a license] and update that section.

3. Update `LICENSE.txt` with your chosen license.

4. Customize `bower.json`.

5. Customize the name of the main input file `tex/latex-project.tex`.

6. Customize the build options at the top of the `Makefile`.

You can replace some of the boilerplate with

```
$ git ls-files -z | xargs -0 sed -i 's/latex-project/your-project/g'
$ git ls-files -z | xargs -0 sed -i 's/makenew/your-username/g'
```

Note that `CHANGELOG.md` is just a template for this skeleton.
The actual changes for this project are documented in the commit history
and summarized under [Releases].

[Choose a license]: http://choosealicense.com/
[Releases]: https://github.com/makenew/latex-project/releases
[The Unlicense]: http://unlicense.org/UNLICENSE

### Updating

If you want to pull in future updates from this skeleton,
you can fetch and merge in changes from this repository.

If this repository is already set as `origin`,
rename it to `upstream` with

```
$ git remote rename origin upstream
```

and then configure your `origin` branch as normal.

Otherwise, add this as a new remote with

```
$ git remote add upstream https://github.com/makenew/latex-project.git
```

You can then fetch and merge changes with

```
$ git fetch upstream
$ git merge upstream/master
```

## Requirements

- A modern [LaTeX] distribution, e.g., [TeX Live],
  packaged with [XeLaTeX], [Latexmk], and optionally [ChkTeX].
- [GNU Make].
- [Node.js] with [npm].
  Only required when using Bower for external dependencies
  or for autobuilding on changes.

[ChkTeX]: http://baruch.ev-en.org/proj/chktex/
[GNU Make]: https://www.gnu.org/software/make/
[LaTeX]: https://www.latex-project.org/
[Latexmk]: https://www.ctan.org/pkg/latexmk/
[Node.js]: https://nodejs.org/
[npm]: https://npmjs.org/
[TeX Live]: https://www.tug.org/texlive/
[XeLaTeX]: http://www.xelatex.org/

## Building

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

Watch code and rebuild on changes with

```
$ npm run watch
```

## Source Code

The [latex-project source] is hosted on GitHub.
To clone the project run

```
$ git clone https://github.com/makenew/latex-project.git
```

[latex-project source]: https://github.com/makenew/latex-project

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

This work is Copyright © yyyy copyright_owner.

## Warranty

This work is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
