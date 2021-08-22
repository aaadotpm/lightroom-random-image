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

  local randomIndex = math.random(1, #photos)

  log(string.format('%d total images', #photos))
  log(string.format('Our random image index is %d', randomIndex))

  LrDialogs.message(string.format('Our random image is %d', randomIndex))

end)
