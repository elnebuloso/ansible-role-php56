date.timezone = "{{php56_config_timezone}}"

; Maximum size of POST data that PHP will accept.
; Its value may be 0 to disable the limit. It is ignored if POST data reading
; is disabled through enable_post_data_reading.
; http://php.net/post-max-size
; post_max_size = 8M
post_max_size = {{php56_config_post_max_size}}

; Maximum allowed size for uploaded files.
; http://php.net/upload-max-filesize
; upload_max_filesize = 2M
upload_max_filesize = {{php56_config_upload_max_filesize}}

; Maximum execution time of each script, in seconds
; http://php.net/max-execution-time
; Note: This directive is hardcoded to 0 for the CLI SAPI
; max_execution_time = 30
max_execution_time = {{php56_config_max_execution_time}}

; Maximum amount of time each script may spend parsing request data. It's a good
; idea to limit this time on productions servers in order to eliminate unexpectedly
; long running scripts.
; Note: This directive is hardcoded to -1 for the CLI SAPI
; Default Value: -1 (Unlimited)
; Development Value: 60 (60 seconds)
; Production Value: 60 (60 seconds)
; http://php.net/max-input-time
; max_input_time = 60
max_input_time = {{php56_config_max_input_time}}

; Decides whether PHP may expose the fact that it is installed on the server
; (e.g. by adding its signature to the Web server header).  It is no security
; threat in any way, but it makes it possible to determine whether you use PHP
; on your server or not.
; http://php.net/expose-php
; expose_php = Off
expose_php = {{php56_config_expose_php}}
