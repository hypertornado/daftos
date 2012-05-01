$ ->
  $(window).bind('body_loaded',
    =>
      te = new TextEditor()
  )

class TextEditor

  constructor: ->
    @el = $("#editor")
    @editor = ace.edit("editor")
    @resize()
    @hashchange()

  hashchange: =>
    location = window.location.hash
    location = location.slice(1,location.length)
    @load_file(location)

  resize: =>
    @el.width($(window).width())
    @el.height($(window).height() - 40)

  load_file: (location) =>
    $.ajax "/api/file_system/file?path="+location+""
      success: (data) =>
        @set_text(data)


  set_text: (text) =>
    @editor.getSession().setValue(text)
