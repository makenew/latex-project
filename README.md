# LaTeX Project Skeleton

[![Github Releases](https://img.shields.io/github/release/makenew/latex-project.svg)](https://github.com/makenew/latex-project/releases)
[![GitHub license](https://img.shields.io/github/license/makenew/latex-project.svg)](./LICENSE.txt)

## Description

Bootstrap a new [LaTeX] project in less than a minute.

[LaTeX]: https://www.latex-project.org/

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

### Bootstrapping a New Project

1. Clone this repository or download a [release][Releases].

2. Run `./makenew.sh` and follow the prompts.
   This will replace the boilerplate, delete itself,
   and stage changes for commit.
   This script assumes the project repository will be hosted on GitHub.
   For an alternative location, you must update the URLs manually.

3. Fill in the README Description section.

4. If [choosing a license][Choose a license] other than the one provided:
   update `LICENSE.txt`, the README License section,
   and `bower.json` with your chosen license.

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

#### Changelog

Note that `CHANGELOG.md` is just a template for this skeleton.
The actual changes for this project are documented in the commit history
and summarized under [Releases].

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

Watch code and rebuild on changes with

```
$ npm start
```

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

This software can be used freely, see [The Unlicense].
The copyright text appearing below and elsewhere in this repository
is for demonstration purposes only and does not apply to this software.

This work is Copyright © 2016 Evan Sosenko.

## Warranty

This work is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
