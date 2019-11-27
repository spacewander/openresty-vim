" Vim syntax file
" Language: LuaJIT in OpenResty

if exists("b:current_syntax") && b:current_syntax == 'openresty-luajit'
  finish
end

" First, we need to set lua_version and lua_subversion in .vimrc, so that we
" could get base Lua5.1 syntax highlight.
" Put below code into your .vimrc
" let g:lua_version = 5
" let g:lua_subversion = 1

" LuaJIT cdata number, \d+LL for int64_t and \d+ULL for uint64_t
syn match luaNumber "\<\d\+U*LL\>"

" Lua5.2 syntax in LuaJIT
syn keyword luaStatement goto
syn match luaLabel  "::\I\i*::"
syn match luaFunc   /\<debug\.upvalueid\>/
syn match luaFunc   /\<debug\.upvaluejoin\>/
syn match luaFunc   /\<debug\.getuservalue\>/
syn match luaFunc   /\<debug\.setuservalue\>/
syn match luaFunc   /\<package\.searchpath\>/
syn match luaFunc   /\<table\.pack\>/
syn match luaFunc   /\<table\.unpack\>/
syn match luaFunc   /\<rawlen\>/

" Lua5.3 syntax in LuaJIT
syn match luaFunc   /\<table\.move\>/

" LuaJIT only syntax
syn match luaFunc   /\<bit\.tobit\>/
syn match luaFunc   /\<bit\.tohex\>/
syn match luaFunc   /\<bit\.bnot\>/
syn match luaFunc   /\<bit\.band\>/
syn match luaFunc   /\<bit\.bor\>/
syn match luaFunc   /\<bit\.bxor\>/
syn match luaFunc   /\<bit\.lshift\>/
syn match luaFunc   /\<bit\.rshift\>/
syn match luaFunc   /\<bit\.arshift\>/
syn match luaFunc   /\<bit\.rol\>/
syn match luaFunc   /\<bit\.ror\>/
syn match luaFunc   /\<bit\.bswap\>/
syn match luaFunc   /\<ffi\.abi\>/
syn match luaFunc   /\<ffi\.alignof\>/
syn match luaFunc   /\<ffi\.cast\>/
syn match luaFunc   /\<ffi\.cdef\>/
syn match luaFunc   /\<ffi\.copy\>/
syn match luaFunc   /\<ffi\.errno\>/
syn match luaFunc   /\<ffi\.fill\>/
syn match luaFunc   /\<ffi\.gc\>/
syn match luaFunc   /\<ffi\.istype\>/
syn match luaFunc   /\<ffi\.load\>/
syn match luaFunc   /\<ffi\.metatype\>/
syn match luaFunc   /\<ffi\.new\>/
syn match luaFunc   /\<ffi\.sizeof\>/
syn match luaFunc   /\<ffi\.string\>/
syn match luaFunc   /\<ffi\.typeof\>/
syn match luaFunc   /\<jit\.flush\>/
syn match luaFunc   /\<jit\.off\>/
syn match luaFunc   /\<jit\.on\>/
syn match luaFunc   /\<jit\.prngstate\>/
syn match luaFunc   /\<jit\.status\>/
syn match luaFunc   /\<table\.clear\>/
syn match luaFunc   /\<table\.new\>/
syn match luaConstant   /\<ffi\.arch\>/
syn match luaConstant   /\<ffi\.os\>/
syn match luaConstant   /\<jit\.arch\>/
syn match luaConstant   /\<jit\.os\>/
syn match luaConstant   /\<jit\.version\>/
syn match luaConstant   /\<jit\.version_num\>/
syn match luaNamespace   /\<ffi\.C\>/

" OpenResty LuaJIT only syntax
syn match luaFunc   /\<table\.clone\>/
syn match luaFunc   /\<table\.isarray\>/
syn match luaFunc   /\<table\.isempty\>/
syn match luaFunc   /\<table\.nkeys\>/
syn match luaFunc   /\<thread\.exdata\>/

" OpenResty API
syn match luaFunc   /\<ngx\.config\.nginx_configure\>/
syn match luaFunc   /\<ngx\.config\.prefix\>/
syn match luaFunc   /\<ngx\.cookie_time\>/
syn match luaFunc   /\<ngx\.crc32_long\>/
syn match luaFunc   /\<ngx\.crc32_short\>/
syn match luaFunc   /\<ngx\.ctx\(\.\w\+\)\?\>/
syn match luaFunc   /\<ngx\.decode_args\>/
syn match luaFunc   /\<ngx\.decode_base64\>/
syn match luaFunc   /\<ngx\.encode_args\>/
syn match luaFunc   /\<ngx\.encode_base64\>/
syn match luaFunc   /\<ngx\.eof\>/
syn match luaFunc   /\<ngx\.escape_uri\>/
syn match luaFunc   /\<ngx\.exec\>/
syn match luaFunc   /\<ngx\.exit\>/
syn match luaFunc   /\<ngx\.flush\>/
syn match luaFunc   /\<ngx\.get_phase\>/
syn match luaFunc   /\<ngx\.headers_sent\>/
syn match luaFunc   /\<ngx\.header\(\.\w\+\)\?\>/
syn match luaFunc   /\<ngx\.hmac_sha1\>/
syn match luaFunc   /\<ngx\.http_time\>/
syn match luaFunc   /\<ngx\.is_subrequest\>/
syn match luaFunc   /\<ngx\.localtime\>/
syn match luaFunc   /\<ngx\.location\.capture\>/
syn match luaFunc   /\<ngx\.location\.capture_multi\>/
syn match luaFunc   /\<ngx\.log\>/
syn match luaFunc   /\<ngx\.md5\>/
syn match luaFunc   /\<ngx\.md5_bin\>/
syn match luaFunc   /\<ngx\.now\>/
syn match luaFunc   /\<ngx\.ocsp\>/
syn match luaFunc   /\<ngx\.on_abort\>/
syn match luaFunc   /\<ngx\.parse_http_time\>/
syn match luaFunc   /\<ngx\.print\>/
syn match luaFunc   /\<ngx\.quote_sql_str\>/
syn match luaFunc   /\<ngx\.redirect\>/
syn match luaFunc   /\<ngx\.re\.find\>/
syn match luaFunc   /\<ngx\.re\.gmatch\>/
syn match luaFunc   /\<ngx\.re\.gsub\>/
syn match luaFunc   /\<ngx\.re\.match\>/
syn match luaFunc   /\<ngx\.req\.append_body\>/
syn match luaFunc   /\<ngx\.req\.clear_header\>/
syn match luaFunc   /\<ngx\.req\.discard_body\>/
syn match luaFunc   /\<ngx\.req\.finish_body\>/
syn match luaFunc   /\<ngx\.req\.get_body_data\>/
syn match luaFunc   /\<ngx\.req\.get_body_file\>/
syn match luaFunc   /\<ngx\.req\.get_headers\>/
syn match luaFunc   /\<ngx\.req\.get_method\>/
syn match luaFunc   /\<ngx\.req\.get_post_args\>/
syn match luaFunc   /\<ngx\.req\.get_uri_args\>/
syn match luaFunc   /\<ngx\.req\.http_version\>/
syn match luaFunc   /\<ngx\.req\.init_body\>/
syn match luaFunc   /\<ngx\.req\.is_internal\>/
syn match luaFunc   /\<ngx\.req\.raw_header\>/
syn match luaFunc   /\<ngx\.req\.read_body\>/
syn match luaFunc   /\<ngx\.req\.set_body_data\>/
syn match luaFunc   /\<ngx\.req\.set_body_file\>/
syn match luaFunc   /\<ngx\.req\.set_header\>/
syn match luaFunc   /\<ngx\.req\.set_method\>/
syn match luaFunc   /\<ngx\.req\.set_uri\>/
syn match luaFunc   /\<ngx\.req\.set_uri_args\>/
syn match luaFunc   /\<ngx\.req\.socket\>/
syn match luaFunc   /\<ngx\.req\.start_time\>/
syn match luaFunc   /\<ngx\.resp\.get_headers\>/
syn match luaFunc   /\<ngx\.re\.sub\>/
syn match luaFunc   /\<ngx\.say\>/
syn match luaFunc   /\<ngx\.send_headers\>/
syn match luaFunc   /\<ngx\.sha1_bin\>/
syn match luaFunc   /\<ngx\.sleep\>/
syn match luaFunc   /\<ngx\.socket\.connect\>/
syn match luaFunc   /\<ngx\.socket\.stream\>/
syn match luaFunc   /\<ngx\.socket\.tcp\>/
syn match luaFunc   /\<ngx\.socket\.udp\>/
syn match luaFunc   /\<ngx\.status\>/
syn match luaFunc   /\<ngx\.thread\.kill\>/
syn match luaFunc   /\<ngx\.thread\.spawn\>/
syn match luaFunc   /\<ngx\.thread\.wait\>/
syn match luaFunc   /\<ngx\.time\>/
syn match luaFunc   /\<ngx\.timer\.at\>/
syn match luaFunc   /\<ngx\.timer\.every\>/
syn match luaFunc   /\<ngx\.timer\.pending_count\>/
syn match luaFunc   /\<ngx\.timer\.running_count\>/
syn match luaFunc   /\<ngx\.today\>/
syn match luaFunc   /\<ngx\.unescape_uri\>/
syn match luaFunc   /\<ngx\.update_time\>/
syn match luaFunc   /\<ngx\.utctime\>/
syn match luaFunc   /\<ngx\.var\.\w\+\>/
syn match luaFunc   /\<ngx\.worker\.count\>/
syn match luaFunc   /\<ngx\.worker\.exiting\>/
syn match luaFunc   /\<ngx\.worker\.id\>/
syn match luaFunc   /\<ngx\.worker\.pid\>/
syn match luaConstant   /\<ngx\.config\.debug\>/
syn match luaConstant   /\<ngx\.config\.nginx_version\>/
syn match luaConstant   /\<ngx\.config\.ngx_lua_version\>/
syn match luaConstant   /\<ngx\.config\.subsystem\>/
syn match luaConstant   /\<ngx\.OK\>/
syn match luaConstant   /\<ngx\.ERROR\>/
syn match luaConstant   /\<ngx\.AGAIN\>/
syn match luaConstant   /\<ngx\.DONE\>/
syn match luaConstant   /\<ngx\.DECLINED\>/
syn match luaConstant   /\<ngx\.null\>/
syn match luaConstant   /\<ngx\.HTTP_GET\>/
syn match luaConstant   /\<ngx\.HTTP_HEAD\>/
syn match luaConstant   /\<ngx\.HTTP_PUT\>/
syn match luaConstant   /\<ngx\.HTTP_POST\>/
syn match luaConstant   /\<ngx\.HTTP_DELETE\>/
syn match luaConstant   /\<ngx\.HTTP_OPTIONS\>/
syn match luaConstant   /\<ngx\.HTTP_MKCOL\>/
syn match luaConstant   /\<ngx\.HTTP_COPY\>/
syn match luaConstant   /\<ngx\.HTTP_MOVE\>/
syn match luaConstant   /\<ngx\.HTTP_PROPFIND\>/
syn match luaConstant   /\<ngx\.HTTP_PROPPATCH\>/
syn match luaConstant   /\<ngx\.HTTP_LOCK\>/
syn match luaConstant   /\<ngx\.HTTP_UNLOCK\>/
syn match luaConstant   /\<ngx\.HTTP_PATCH\>/
syn match luaConstant   /\<ngx\.HTTP_TRACE\>/
syn match luaConstant   /\<ngx\.STDERR\>/
syn match luaConstant   /\<ngx\.EMERG\>/
syn match luaConstant   /\<ngx\.ALERT\>/
syn match luaConstant   /\<ngx\.CRIT\>/
syn match luaConstant   /\<ngx\.ERR\>/
syn match luaConstant   /\<ngx\.WARN\>/
syn match luaConstant   /\<ngx\.NOTICE\>/
syn match luaConstant   /\<ngx\.INFO\>/
syn match luaConstant   /\<ngx\.DEBUG\>/
syn match luaConstant   /\<ngx\.HTTP_CONTINUE\>/
syn match luaConstant   /\<ngx\.HTTP_SWITCHING_PROTOCOLS\>/
syn match luaConstant   /\<ngx\.HTTP_OK\>/
syn match luaConstant   /\<ngx\.HTTP_CREATED\>/
syn match luaConstant   /\<ngx\.HTTP_ACCEPTED\>/
syn match luaConstant   /\<ngx\.HTTP_NO_CONTENT\>/
syn match luaConstant   /\<ngx\.HTTP_PARTIAL_CONTENT\>/
syn match luaConstant   /\<ngx\.HTTP_SPECIAL_RESPONSE\>/
syn match luaConstant   /\<ngx\.HTTP_MOVED_PERMANENTLY\>/
syn match luaConstant   /\<ngx\.HTTP_MOVED_TEMPORARILY\>/
syn match luaConstant   /\<ngx\.HTTP_SEE_OTHER\>/
syn match luaConstant   /\<ngx\.HTTP_NOT_MODIFIED\>/
syn match luaConstant   /\<ngx\.HTTP_TEMPORARY_REDIRECT\>/
syn match luaConstant   /\<ngx\.HTTP_PERMANENT_REDIRECT\>/
syn match luaConstant   /\<ngx\.HTTP_BAD_REQUEST\>/
syn match luaConstant   /\<ngx\.HTTP_UNAUTHORIZED\>/
syn match luaConstant   /\<ngx\.HTTP_PAYMENT_REQUIRED\>/
syn match luaConstant   /\<ngx\.HTTP_FORBIDDEN\>/
syn match luaConstant   /\<ngx\.HTTP_NOT_FOUND\>/
syn match luaConstant   /\<ngx\.HTTP_NOT_ALLOWED\>/
syn match luaConstant   /\<ngx\.HTTP_NOT_ACCEPTABLE\>/
syn match luaConstant   /\<ngx\.HTTP_REQUEST_TIMEOUT\>/
syn match luaConstant   /\<ngx\.HTTP_CONFLICT\>/
syn match luaConstant   /\<ngx\.HTTP_GONE\>/
syn match luaConstant   /\<ngx\.HTTP_UPGRADE_REQUIRED\>/
syn match luaConstant   /\<ngx\.HTTP_TOO_MANY_REQUESTS\>/
syn match luaConstant   /\<ngx\.HTTP_CLOSE\>/
syn match luaConstant   /\<ngx\.HTTP_ILLEGAL\>/
syn match luaConstant   /\<ngx\.HTTP_INTERNAL_SERVER_ERROR\>/
syn match luaConstant   /\<ngx\.HTTP_METHOD_NOT_IMPLEMENTED\>/
syn match luaConstant   /\<ngx\.HTTP_BAD_GATEWAY\>/
syn match luaConstant   /\<ngx\.HTTP_SERVICE_UNAVAILABLE\>/
syn match luaConstant   /\<ngx\.HTTP_GATEWAY_TIMEOUT\>/
syn match luaConstant   /\<ngx\.HTTP_VERSION_NOT_SUPPORTED\>/
syn match luaConstant   /\<ngx\.HTTP_INSUFFICIENT_STORAGE\>/

hi link luaNamespace Special

let b:current_syntax = 'openresty-luajit'
