local LrLogger = import 'LrLogger'
local LrApplication = import 'LrApplication'
local LrApplicationView = import 'LrApplicationView'
local LrTasks = import 'LrTasks'

local logger = LrLogger('DevelopRandomImagePlugin')
logger:enable('logfile')
local log = logger:quickf('info')

LrTasks.startAsyncTask(function ()
  local catalog = LrApplication.activeCatalog()

  -- Create virtual copy of selected image
  catalog:createVirtualCopies('aaadotpm-routine')

  log('Switching to develop mode…')
  LrApplicationView.switchToModule('develop')

end)
