$ ->
  $(window).bind('body_loaded',
    =>
      pb = new PhotoBrowser()
      pb.hashchange()
  )

class PhotoBrowser
  constructor: ->

  hashchange: =>
    location = window.location.hash
    location = location.slice(1,location.length)
    @load_image(location)

  load_image: (path) =>
    #/Users/ondrejodchazel/Pictures/pozadi.png
    $("#image").attr("src","/api/file_system/file?path=#{path}")
