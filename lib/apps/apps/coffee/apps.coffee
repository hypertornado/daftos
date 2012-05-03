#alert "xx"
#/api/apps/list

$ ->
  $(window).bind('body_loaded',
    =>
      apps = new Apps()
  )

class Apps
  constructor: ->
    $.ajax "/api/apps/list"
      cache: false
      dataType: 'json'
      success: (data) =>
        console.log data
        for d in data
          $("#applist").append("<a href='/#{d.path}'><li class='apps'>
            <img src='/#{d.path}/icon.png' class='icon-big'>
              <div>#{d.name}</div>
            </li></a>")