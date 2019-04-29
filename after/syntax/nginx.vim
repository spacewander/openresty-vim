" Vim syntax file
" Language: nginx.conf for openresty

if exists("b:current_syntax") && b:current_syntax == 'openresty'
  finish
end

" lua-nginx-module
unlet! b:current_syntax
let b:lua_version = 5
let b:lua_subversion = 1
syn include @LuaBlock syntax/lua.vim
syn region orDirectiveBlockWithBracket
    \ start="[a-z_]\+_by_lua_block" end="{"
    \ contains=orDirectiveBlock contained

" Since skip_pattern doesn't support \n, here is a hack:
" we require the start pattern and the end pattern to have the same
" whitespace prefix, so that inner '}' line will not be considered as end pattern.
syn region orBlock
    \ start="\z(\s*\)[a-z_]\+_by_lua_block\(\(\s\|\n\)\+\(\$\S\+\)*\(\s\|\n\)*\|\(\s\|\n\)*\){"hs=e+1 end="^\z1}\s*$"he=s-1
    \ keepend contains=orDirectiveBlockWithBracket,@LuaBlock fold

" Should we mark it as DEPRECATED?
" syn keyword ngxDirectiveDeprecated access_by_lua
syn keyword ngxLuaDirective access_by_lua
syn keyword ngxLuaDirective body_filter_by_lua
syn keyword ngxLuaDirective content_by_lua
syn keyword ngxLuaDirective header_filter_by_lua
syn keyword ngxLuaDirective init_by_lua
syn keyword ngxLuaDirective init_worker_by_lua
syn keyword ngxLuaDirective log_by_lua
syn keyword ngxLuaDirective rewrite_by_lua
syn keyword ngxLuaDirective set_by_lua

syn keyword ngxLuaDirective access_by_lua_file
syn keyword ngxLuaDirective body_filter_by_lua_file
syn keyword ngxLuaDirective content_by_lua_file
syn keyword ngxLuaDirective header_filter_by_lua_file
syn keyword ngxLuaDirective init_by_lua_file
syn keyword ngxLuaDirective init_worker_by_lua_file
syn keyword ngxLuaDirective log_by_lua_file
syn keyword ngxLuaDirective rewrite_by_lua_file
syn keyword ngxLuaDirective set_by_lua_file
syn keyword ngxLuaDirective balancer_by_lua_file
syn keyword ngxLuaDirective ssl_certificate_by_lua_file
syn keyword ngxLuaDirective ssl_session_fetch_by_lua_file
syn keyword ngxLuaDirective ssl_session_store_by_lua_file

syn keyword orDirectiveBlock access_by_lua_block contained
syn keyword orDirectiveBlock body_filter_by_lua_block contained
syn keyword orDirectiveBlock content_by_lua_block contained
syn keyword orDirectiveBlock header_filter_by_lua_block contained
syn keyword orDirectiveBlock init_by_lua_block contained
syn keyword orDirectiveBlock init_worker_by_lua_block contained
syn keyword orDirectiveBlock log_by_lua_block contained
syn keyword orDirectiveBlock rewrite_by_lua_block contained
syn keyword orDirectiveBlock balancer_by_lua_block contained
syn keyword orDirectiveBlock ssl_certificate_by_lua_block contained
syn keyword orDirectiveBlock ssl_session_fetch_by_lua_block contained
syn keyword orDirectiveBlock ssl_session_store_by_lua_block contained
syn keyword orDirectiveBlock set_by_lua_block contained

syn keyword ngxLuaDirective lua_use_default_type
syn keyword ngxLuaDirective lua_code_cache
syn keyword ngxLuaDirective lua_regex_cache_max_entries
syn keyword ngxLuaDirective lua_regex_match_limit
syn keyword ngxLuaDirective lua_package_path
syn keyword ngxLuaDirective lua_package_cpath
syn keyword ngxLuaDirective lua_need_request_body
syn keyword ngxLuaDirective lua_shared_dict
syn keyword ngxLuaDirective lua_socket_connect_timeout
syn keyword ngxLuaDirective lua_socket_send_timeout
syn keyword ngxLuaDirective lua_socket_send_lowat
syn keyword ngxLuaDirective lua_socket_read_timeout
syn keyword ngxLuaDirective lua_socket_buffer_size
syn keyword ngxLuaDirective lua_socket_pool_size
syn keyword ngxLuaDirective lua_socket_keepalive_timeout
syn keyword ngxLuaDirective lua_socket_log_errors
syn keyword ngxLuaDirective lua_capture_error_log
syn keyword ngxLuaDirective lua_ssl_ciphers
syn keyword ngxLuaDirective lua_ssl_crl
syn keyword ngxLuaDirective lua_ssl_protocols
syn keyword ngxLuaDirective lua_ssl_trusted_certificate
syn keyword ngxLuaDirective lua_ssl_verify_depth
syn keyword ngxLuaDirective lua_http10_buffering
syn keyword ngxLuaDirective rewrite_by_lua_no_postpone
syn keyword ngxLuaDirective access_by_lua_no_postpone
syn keyword ngxLuaDirective lua_transform_underscores_in_response_headers
syn keyword ngxLuaDirective lua_check_client_abort
syn keyword ngxLuaDirective lua_max_pending_timers
syn keyword ngxLuaDirective lua_max_running_timers
syn keyword ngxLuaDirective lua_sa_restart
syn keyword ngxLuaDirective lua_load_resty_core

" stream-lua-nginx-module
syn keyword orDirective lua_resolver
syn keyword orDirective lua_resolver_timeout
syn keyword orDirective lua_lingering_close
syn keyword orDirective lua_lingering_time
syn keyword orDirective lua_lingering_timeout
syn keyword orDirective lua_add_variable
syn keyword orDirective preread_by_lua_no_postpone

" array-var-nginx-module
syn keyword orDirective array_split
syn keyword orDirective array_join
syn keyword orDirective array_map
syn keyword orDirective array_map_op

" drizzle-nginx-module
syn keyword orDirective drizzle_server
syn keyword orDirective drizzle_keepalive
syn keyword orDirective drizzle_query
syn keyword orDirective drizzle_pass
syn keyword orDirective drizzle_connect_timeout
syn keyword orDirective drizzle_send_query_timeout
syn keyword orDirective drizzle_recv_cols_timeout
syn keyword orDirective drizzle_recv_rows_timeout
syn keyword orDirective drizzle_buffer_size
syn keyword orDirective drizzle_module_header
syn keyword orDirective drizzle_status

" echo-nginx-module
syn keyword orDirective echo
syn keyword orDirective echo_duplicate
syn keyword orDirective echo_flush
syn keyword orDirective echo_sleep
syn keyword orDirective echo_blocking_sleep
syn keyword orDirective echo_reset_timer
syn keyword orDirective echo_read_request_body
syn keyword orDirective echo_location_async
syn keyword orDirective echo_location
syn keyword orDirective echo_subrequest_async
syn keyword orDirective echo_subrequest
syn keyword orDirective echo_foreach_split
syn keyword orDirective echo_end
syn keyword orDirective echo_request_body
syn keyword orDirective echo_exec
syn keyword orDirective echo_status
syn keyword orDirective echo_before_body
syn keyword orDirective echo_after_body

" stream-echo-nginx-module
syn keyword orDirective echo
syn keyword orDirective echo_duplicate
syn keyword orDirective echo_flush_wait
syn keyword orDirective echo_sleep
syn keyword orDirective echo_send_timeout
syn keyword orDirective echo_read_bytes
syn keyword orDirective echo_read_line
syn keyword orDirective echo_request_data
syn keyword orDirective echo_discard_request
syn keyword orDirective echo_read_buffer_size
syn keyword orDirective echo_read_timeout
syn keyword orDirective echo_client_error_log_level
syn keyword orDirective echo_lingering_close
syn keyword orDirective echo_lingering_time
syn keyword orDirective echo_lingering_timeout

" encrypted-session-nginx-module
syn keyword orDirective encrypted_session_key
syn keyword orDirective encrypted_session_iv
syn keyword orDirective encrypted_session_expires
syn keyword orDirective set_encrypt_session
syn keyword orDirective set_decrypt_session

" headers-more-nginx-module
syn keyword orDirective more_set_headers
syn keyword orDirective more_clear_headers
syn keyword orDirective more_set_input_headers
syn keyword orDirective more_clear_input_headers

" memc-nginx-module
syn keyword orDirective memc_pass
syn keyword orDirective memc_cmds_allowed
syn keyword orDirective memc_flags_to_last_modified
syn keyword orDirective memc_connect_timeout
syn keyword orDirective memc_send_timeout
syn keyword orDirective memc_read_timeout
syn keyword orDirective memc_buffer_size
syn keyword orDirective memc_ignore_client_abort

" ngx_postgres
syn keyword orDirective postgres_server
syn keyword orDirective postgres_keepalive
syn keyword orDirective postgres_pass
syn keyword orDirective postgres_query
syn keyword orDirective postgres_rewrite
syn keyword orDirective postgres_output
syn keyword orDirective postgres_set
syn keyword orDirective postgres_escape
syn keyword orDirective postgres_connect_timeout
syn keyword orDirective postgres_result_timeout

" replace-filter-nginx-module
syn keyword orDirective replace_filter
syn keyword orDirective replace_filter_types
syn keyword orDirective replace_filter_max_buffered_size
syn keyword orDirective replace_filter_last_modified
syn keyword orDirective replace_filter_skip

" rds-csv-nginx-module
syn keyword orDirective rds_csv
syn keyword orDirective rds_csv_row_terminator
syn keyword orDirective rds_csv_field_separator
syn keyword orDirective rds_csv_field_name_header
syn keyword orDirective rds_csv_content_type
syn keyword orDirective rds_csv_buffer_size

" rds-json-nginx-module
syn keyword orDirective rds_json
syn keyword orDirective rds_json_buffer_size
syn keyword orDirective rds_json_format
syn keyword orDirective rds_json_root
syn keyword orDirective rds_json_success_property
syn keyword orDirective rds_json_user_property
syn keyword orDirective rds_json_errcode_key
syn keyword orDirective rds_json_errstr_key
syn keyword orDirective rds_json_ret
syn keyword orDirective rds_json_content_type

" redis2-nginx-module
syn keyword orDirective redis2_query
syn keyword orDirective redis2_raw_query
syn keyword orDirective redis2_raw_queries
syn keyword orDirective redis2_literal_raw_query
syn keyword orDirective redis2_pass
syn keyword orDirective redis2_connect_timeout
syn keyword orDirective redis2_send_timeout
syn keyword orDirective redis2_read_timeout
syn keyword orDirective redis2_buffer_size
syn keyword orDirective redis2_next_upstream

" set-misc-nginx-module
syn keyword orDirective set_if_empty
syn keyword orDirective set_quote_sql_str
syn keyword orDirective set_quote_pgsql_str
syn keyword orDirective set_quote_json_str
syn keyword orDirective set_unescape_uri
syn keyword orDirective set_escape_uri
syn keyword orDirective set_hashed_upstream
syn keyword orDirective set_encode_base32
syn keyword orDirective set_base32_padding
syn keyword orDirective set_misc_base32_padding
syn keyword orDirective set_base32_alphabet
syn keyword orDirective set_decode_base32
syn keyword orDirective set_encode_base64
syn keyword orDirective set_decode_base64
syn keyword orDirective set_encode_hex
syn keyword orDirective set_decode_hex
syn keyword orDirective set_sha1
syn keyword orDirective set_md5
syn keyword orDirective set_hmac_sha1
syn keyword orDirective set_random
syn keyword orDirective set_secure_random_alphanum
syn keyword orDirective set_secure_random_lcalpha
syn keyword orDirective set_rotate
syn keyword orDirective set_local_today
syn keyword orDirective set_formatted_gmt_time
syn keyword orDirective set_formatted_local_time

" srcache-nginx-module
syn keyword orDirective srcache_fetch
syn keyword orDirective srcache_fetch_skip
syn keyword orDirective srcache_store
syn keyword orDirective srcache_store_max_size
syn keyword orDirective srcache_store_skip
syn keyword orDirective srcache_store_statuses
syn keyword orDirective srcache_store_ranges
syn keyword orDirective srcache_header_buffer_size
syn keyword orDirective srcache_store_hide_header
syn keyword orDirective srcache_store_pass_header
syn keyword orDirective srcache_methods
syn keyword orDirective srcache_ignore_content_encoding
syn keyword orDirective srcache_request_cache_control
syn keyword orDirective srcache_response_cache_control
syn keyword orDirective srcache_store_no_store
syn keyword orDirective srcache_store_no_cache
syn keyword orDirective srcache_store_private
syn keyword orDirective srcache_default_expire
syn keyword orDirective srcache_max_expire

" xss-nginx-module
syn keyword orDirective xss_get
syn keyword orDirective xss_callback_arg
syn keyword orDirective xss_override_status
syn keyword orDirective xss_check_status
syn keyword orDirective xss_input_types


hi link orDirective ngxDirectiveThirdParty
hi link ngxLuaDirective orDirective
hi link orDirectiveBlock Statement

let b:current_syntax = 'openresty'
