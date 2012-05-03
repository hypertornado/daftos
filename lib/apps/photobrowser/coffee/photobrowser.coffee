$ ->
  $(window).bind('body_loaded',
    =>
      pb = new PhotoBrowser()
      pb.hashchange()
  )

class PhotoBrowser
  constructor: ->
    @image_path_list = []
    @actual_filename = false
    @actual_dir = false
    @bind_events()

  bind_events: =>
    $(window).keydown(
      (event) =>
        switch event.keyCode
          when 37 then @prev()
          when 39 then @next()
    )

  prev: =>
    position = @position_in_dir()
    return if position == false
    position -= 1
    position = @image_path_list.length - 1 unless position >= 0
    location.hash = "#{@image_path_list[position]}"
    @hashchange()

  next: =>
    position = @position_in_dir()
    return if position == false
    position += 1
    position = position % @image_path_list.length
    location.hash = "#{@image_path_list[position]}"
    @hashchange()

  dirname: (filepath) =>
    filepath.replace(/[^/]+$/,"")

  load_image_list: (dirpath) =>
    if @actual_dir == dirpath
      @reload_status_bar()
      return
    @actual_dir = dirpath
    $.ajax '/api/file_system/metadata'
      data:
        path: dirpath
      dataType: 'json'
      success: (data) =>
        @image_path_list = []
        for file in data.contents
          @image_path_list.push(file.absolute_path) if file.mime_type and file.mime_type.match("image/")
        @reload_status_bar()
      error: =>
        alert "Cant load directory #{path}"

  reload_status_bar: =>
    $("#dirsum").html(@image_path_list.length)
    $("#dirposition").html(@position_in_dir() + 1)

  position_in_dir: =>
    i = 0
    for name in @image_path_list
      #console.log "#{name} -- #{@actual_filename}"
      return i if name == @actual_filepath
      i += 1
    return false

  hashchange: =>
    location = window.location.hash
    location = location.slice(1,location.length)
    @load_image(location)
    @load_image_list(@dirname(location))

  load_image: (path) =>
    @actual_filepath = path
    ar = path.split('/')
    @actual_filename = ar[ar.length - 1]
    #console.log @actual_filename
    $("#filename").html(@actual_filename)
    $("#image").attr("src","/api/file_system/file?path=#{path}")
