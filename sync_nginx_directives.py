#!/usr/bin/env python
# coding: utf-8
"""
Sync Nginx's directives keyword via:
1. Run ./sync_nginx_directives.py /path/to/nginx/contrib/vim/syntax/nginx.vim
2. Update ./syntax/nginx.vim with the output
"""
from collections import defaultdict
import sys

if len(sys.argv) <= 1:
    print("usage: {} /path/to/nginx/contrib/vim/syntax/nginx.vim".format(
        sys.argv[0]))
    sys.exit(1)

ngx_block = []
ngx_important = []
ngx_control = []
ngx_error = []
ngx_deprecated = []
ngx_directive = []
third_party_directive = defaultdict(list)
description = None
with open(sys.argv[1]) as f:
    lines = f.readlines()

    for i, line in enumerate(lines):
        if line.startswith("syn keyword ngxDirectiveBlock "):
            ngx_block.append(line.rsplit(None, 1)[-1])
        elif line.startswith("syn keyword ngxDirectiveImportant "):
            ngx_important.append(line.rsplit(None, 1)[-1])
        elif line.startswith("syn keyword ngxDirectiveControl "):
            ngx_control.append(line.rsplit(None, 1)[-1])
        elif line.startswith("syn keyword ngxDirectiveError "):
            ngx_error.append(line.rsplit(None, 1)[-1])
        elif line.startswith("syn keyword ngxDirectiveDeprecated "):
            ngx_deprecated.append(line.rsplit(None, 1)[-1])
        elif line.startswith("syn keyword ngxDirective "):
            ngx_directive.append(line.rsplit(None, 1)[-1])
        elif line.startswith("syn keyword ngxDirectiveThirdParty"):
            if not description:
                comment = []
                while i > 0:
                    i -= 1
                    if not lines[i].startswith('" '):
                        break
                    comment.append(lines[i])
                description = "".join(reversed(comment)).rstrip()

            third_party_directive[description].append(line.rstrip())
        else:
            if description:
                description = None

for directive in ngx_block:
    print("syn keyword ngxDirectiveBlock {:<15} contained".format(directive))
print('')

for directive in ngx_important:
    print("syn keyword ngxDirectiveImportant {}".format(directive))
print('')

for directive in ngx_control:
    print("syn keyword ngxDirectiveControl {}".format(directive))
print('')

for directive in ngx_error:
    print("syn keyword ngxDirectiveError {}".format(directive))
print('')

for directive in ngx_deprecated:
    print("syn keyword ngxDirectiveDeprecated {}".format(directive))
print('')

for directive in ngx_directive:
    print("syn keyword ngxDirective {}".format(directive))
print('\n')

for module, syn_keywords in third_party_directive.items():
    print(module)
    # Don't print openresty directives, they should be located in separate
    # files.
    if "github.com/openresty/" not in module:
        for syn_keyword in syn_keywords:
            print(syn_keyword)
    print("")
