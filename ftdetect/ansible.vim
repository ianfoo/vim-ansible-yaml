" Determine if normal YAML or Ansible YAML
" Language:        YAML (with Ansible)
" Maintainer:      Benji Fisher, Ph.D. <benji@FisherFam.org>
" Author:          Chase Colman <chase@colman.io>
" Version:         1.0
" Latest Revision: 2015-03-23
" URL:             https://github.com/ianfoo/vim-ansible-yaml

autocmd BufNewFile,BufRead *.yml,*.yaml  call s:SelectAnsible("ansible")

fun! s:SelectAnsible(fileType)
  " Bail out if 'filetype' is already set to "ansible".
  if index(split(&ft, '\.'), 'ansible') != -1
    return
  endif

  let fp = expand("<afile>:p")
  let dir = expand("<afile>:p:h")

  " Check if buffer is has .yaml or .yml extension.
  if fp =~ '/.*\.y\(a\)\?ml$'
    execute "set filetype=" . a:fileType . '.yaml'
    return
  endif
endfun
