local LrLogger = import 'LrLogger'
local LrDialogs = import 'LrDialogs'
local LrApplication = import 'LrApplication'
local LrApplicationView = import 'LrApplicationView'
local LrTasks = import 'LrTasks'

local logger = LrLogger('DevelopRandomImagePlugin')
logger:enable('logfile')
local log = logger:quickf('info')

LrTasks.startAsyncTask(function ()
  local catalog = LrApplication.activeCatalog()
  local photos = catalog:getAllPhotos()

  local randomIndex = math.random(1, #photos)

  log(string.format('%d total images', #photos))
  log(string.format('Our random image index is %d', randomIndex))

  local randomPhoto = photos[randomIndex]

  log(string.format('Setting selected photo %d…', randomPhoto.localIdentifier))
  catalog:setSelectedPhotos(randomPhoto, {})

  log('Switching to develop mode…')
  LrApplicationView.switchToModule('develop')

end)
