
$ ->

  path = "/#{$('body').data('app-name')}/body.html"
  name = $('body').data('app-name')

  $.ajax "/"+name+"/options.json"
    cache: false
    success: (data) ->
      data.menu = [] unless data.menu
      for m in data.menu
        console.log m
        el = $("<li>"
          class: 'dropdown'
        )
        a = $("<a>"
          href: "#"
          "class":"dropdown-toggle"
          "data-toggle":"dropdown"
          html: m.name
        )
        el.append(a)
        if m.submenu.length
          ul = $("<ul>"
            class: "dropdown-menu"
          )
          for sub in m.submenu
            ul.append("<li><a href='' id='#{sub.id}'>#{sub.name}</a></li>")
          el.append(ul)
        $("ul.nav").append(el)

      $.ajax "/"+name+"/body.html"
        cache: false
        success: (data) ->
          $('body').append(data)
          $(window).trigger("body_loaded")