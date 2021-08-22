local LrLogger = import 'LrLogger'
local LrDialogs = import 'LrDialogs'

local logger = LrLogger('DevelopRandomImagePlugin')
logger:enable('logfile')
local log = logger:quickf('info')

log('Test')
LrDialogs.message('Hello from random image')
