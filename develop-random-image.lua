local LrLogger = import 'LrLogger'
local LrDialogs = import 'LrDialogs'
local LrApplication = import 'LrApplication'
local LrTasks = import 'LrTasks'

local logger = LrLogger('DevelopRandomImagePlugin')
logger:enable('logfile')
local log = logger:quickf('info')

LrTasks.startAsyncTask(function ()
  log('Starting async plugin…')

  local catalog = LrApplication.activeCatalog()
  local photos = catalog:getAllPhotos()

  LrDialogs.message(string.format('%d total images', #photos))

end)
