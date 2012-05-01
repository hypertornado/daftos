$ ->
  $(window).bind('body_loaded',
    =>
      fb = new FileBrowser()
  )

class FileBrowser

  constructor: ->
    $(window).on('hashchange', @hashchange)
    @hashchange()

  hashchange: =>
    location = window.location.hash
    location = location.slice(1,location.length)
    @load_dir(location)

  load_dir: (path) =>
    $('#file-list').html("")
    $('#dir-path').html("")
    $.ajax '/api/file_system/metadata'
      data:
        path: path
      dataType: 'json'
      success: (data) =>
        for file in data.contents
          $('#dir-path').html(@path_element(path))
          $('#file-list').append(@create_element(file))
      error: =>
        alert "Cant load directory #{path}"

  create_element: (file) =>
    if file.is_dir
      el = $("<tr><td><a href='##{file.absolute_path}'>#{file.name}</a></td><td><b>DIR</b></td></tr>")  
    else
      app = ""
      app = "texteditor" if file.mime_type.match("text/")
      app = "photobrowser" if file.mime_type.match("image/")
      if app.length > 0
        el = $("<tr><td><a href='/#{app}##{file.absolute_path}' target='_blank'>#{file.name}</a></td><td>#{file.mime_type}</td></tr>")
      else
        el = $("<tr><td>#{file.name}</td><td>#{file.mime_type}</td></tr>")
    return el


  path_element: (path) =>
    ret = $("<span></span>")
    ar = path.split('/')
    for dir in ar
      ret.append("<li><span class='divider'>/</span> <a href='#'>#{dir}</a></li>")
    return ret