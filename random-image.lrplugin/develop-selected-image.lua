local LrLogger = import 'LrLogger'
local LrApplicationView = import 'LrApplicationView'
local LrTasks = import 'LrTasks'

local logger = LrLogger('DevelopRandomImagePlugin')
logger:enable('logfile')
local log = logger:quickf('info')

LrTasks.startAsyncTask(function ()
  log('Switching to develop mode…')
  LrApplicationView.switchToModule('develop')

end)
