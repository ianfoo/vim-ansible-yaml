# vim-ansible-yaml

### My fork of [vim-ansible-yaml](https://github.com/chase/vim-ansible-yaml)

I've never used Ansible. I just wanted something to fix Vim's default handling
of of YAML files, with its unpredictable indentation and block shift left/right
that ends up moving blocks into the wrong column.

This repository is nearly identical to [the
upstream](https://github.com/chase/vim-ansible-yaml) (thank you for your
work!), but anything Ansible related in file type detection is stripped away:
it looks only to determine whether the buffer has an extension of `yaml` or
`yml`.

Any Ansible-specific nuances in the actual editing of the files will still be in
place; you just don't have to set the file type manually anymore when editing
non-Ansible YAML.

I've retained the installation directions and the filetype detection details,
but really, you should visit the [forked
repo](https://github.com/chase/vim-ansible-yaml) for information about this
plugin.

---

Adds additional syntax highlighting and fixes indentation for Ansible's dialect
of YAML.

## Install

### Using [Vundle](https://github.com/gmarik/vundle)

1. Add the following to your `.vimrc` where other bundles are located:

		Bundle 'ianfoo/vim-ansible-yaml'

2. Run from command line:

		$ vim +BundleInstall

### Using [pathogen](https://github.com/tpope/vim-pathogen)

1. Check out the repository into your bundle path:

        $ cd ~/.vim/bundle
        $ git clone git://github.com/ianfoo/vim-ansible-yaml.git

2. Install the help file. (Repeat this step if you get an updated version.) From inside vim,

	:Helptags

### Normal

1. Check out the repository and copy the following to `.vim/` directory or any
   other run time path, keeping their directory structure intact:

		doc/ansible.txt
		ftdetect/ansible.vim
		syntax/ansible.vim
		syntax/include/jinja.vim
		syntax/include/yaml.vim
		indent/ansible.vim

2. Install the help file.  From inside vim,  `:helptags ~/.vim/doc`.

## Detection

You can tell vim to recognize a file as Ansible by adding a modeline near the top or bottom of the file:
```
# vim:ft=ansible:
```

A file is recognized as an Ansible YAML file, and its filetype is set to `ansible`, if the file extension
is `.yml` or `.yaml`.

## Thanks

[Chase Colman](https://github.com/chase), and all the folks he thanks in his
[readme](https://github.com/chase/vim-ansible-yaml/tree/master/README.md), for
actually writing this plugin that I basically deleted a line or two of code
from.

