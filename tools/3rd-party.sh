#/bin/bash

remotes=(
    "https://github.com/highlightjs/highlightjs-alan"
    "https://github.com/highlightjs/highlightjs-closure-templates"
    "https://github.com/highlightjs/highlightjs-cshtml-razor"
    "https://github.com/highlightjs/highlightjs-cypher"
    "https://github.com/highlightjs/highlight-dylan"
    "https://github.com/highlightjs/highlightjs-gdscript"
    "https://github.com/highlightjs/highlightjs-GN"
    "https://github.com/highlightjs/highlightjs-lustre"
    "https://github.com/highlightjs/highlightjs-mirc"
    "https://github.com/highlightjs/highlightjs-robot"
    "https://github.com/highlightjs/highlightjs-robots-txt"
    "https://github.com/highlightjs/highlightjs-rpm-specfile"
    "https://github.com/highlightjs/highlightjs-sentinel"
    "https://github.com/highlightjs/highlightjs-shexc"
    "https://github.com/highlightjs/highlightjs-solidity"
    "https://github.com/highlightjs/highlightjs-structured-text"
    "https://github.com/highlightjs/highlightjs-supercollider"
    "https://github.com/highlightjs/highlightjs-terraform"
    "https://github.com/highlightjs/highlightjs-tsql"
    "https://github.com/highlightjs/highlightjs-vue"
    "https://github.com/highlightjs/highlightjs-xtlang"
)
repo_names=(
    "alan"
    "closure-templates"
    "cshtml-razor"
    "cypher"
    "dylan"
    "gdscript"
    "GN"
    "lustre"
    "mirc"
    "robot"
    "robots-txt"
    "rpm-specfile"
    "sentinel"
    "shexc"
    "solidity"
    "structured-text"
    "supercollider"
    "terraform"
    "tsql"
    "vue"
    "xtlang"
)

rm -rf lib_repos/
mkdir lib_repos/

for i in "${!remotes[@]}"
do
    remote=${remotes[$i]}
    folder=${repo_names[$i]}

    git clone "$remote.git" "lib_repos/$folder"
done
