return {
  VERSION = {
    major=0,
    minor=0,
    revision=1
  },

  LrSdkVersion = 10.0,
  LrSdkMinimumVersion = 10.0,
 
  LrToolkitIdentifier = "com.aaa.lightroom-random-image",
  LrPluginName = "AAA Random Image",
  LrPluginInfoUrl = "https://github.com/aaadotpm/lightroom-random-image",
  LrLibraryMenuItems = {
    {
      title = "Select random image",
      file = "select-random-image.lua",
    },
    {
      title = "Develop virtual copy of selected image",
      file = "develop-selected-image.lua",
    },
  }
}
