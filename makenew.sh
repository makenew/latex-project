#!/usr/bin/env sh

set -e
set -u

find_replace () {
  git ls-files -z | xargs -0 sed -i "$1"
}

check_env () {
  test -d .git || (echo 'This is not a Git repository. Exiting.' && exit 1)
  for cmd in ${1}; do
    command -v ${cmd} >/dev/null 2>&1 || \
      (echo "Could not find '$cmd' which is required to continue." && exit 2)
  done
  echo
  echo 'Ready to bootstrap your new project!'
  echo
}

stage_env () {
  echo
  git rm -f makenew.sh
  echo
  echo 'Staging changes.'
  git add --all
  echo
  echo 'Done!'
  echo
}

makenew () {
  read -p '> Project title: ' mk_title
  read -p '> Short project description: ' mk_description
  read -p '> Version number: ' mk_version
  read -p '> Author name: ' mk_author
  read -p '> Author email: ' mk_email
  read -p '> Copyright owner: ' mk_owner
  read -p '> Copyright year: ' mk_year
  read -p '> GitHub user or organization name: ' mk_user
  read -p '> GitHub repository name: ' mk_repo
  read -p '> Primary tex file name (without extension): ' mk_infile
  read -p '> Primary output file name (without extention): ' mk_outfile

  sed -i -e '3d;9,96d;174,177d' README.md
  sed -i -e "8i ${mk_description}" README.md
  sed -i -e '24d' bower.json

  find_replace "s/0\.0\.0/${mk_version}/g"
  find_replace "s/LaTeX Project Skeleton/${mk_title}/g"
  find_replace "s/LaTeX project skeleton\./${mk_description}/g"
  find_replace "s/2016 Evan Sosenko/${mk_year} ${mk_owner}/g"
  find_replace "s/Evan Sosenko/${mk_author}/g"
  find_replace "s/razorx@evansosenko\.com/${mk_email}/g"
  find_replace "s/makenew\/latex-project/${mk_user}\/${mk_repo}/g"
  find_replace "s/makenew-latex-project/${mk_infile}/g"
  find_replace "s/Make-New-LaTeX-Project/${mk_outfile}/g"

  git mv tex/makenew-latex-project.tex tex/${mk_infile}.tex

  mk_attribution='> Built from [makenew/latex-project](https://github.com/makenew/latex-project).'
  sed -i -e "6i ${mk_attribution}\n" README.md

  echo
  echo 'Replacing boilerplate.'
}

check_env 'git read sed xargs'
makenew
stage_env
exit
