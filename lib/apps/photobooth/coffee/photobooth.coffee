$ ->
  $(window).bind('body_loaded',
    =>
      new PhotoBooth()
  )



class PhotoBooth

  constructor: ->
    #@init_stream()
    navigator.getUserMedia = navigator.webkitGetUserMedia || navigator.getUserMedia;
    window.URL = window.URL || window.webkitURL;
    navigator.getUserMedia('video', 
      (par) =>
        @got_stream(par)
    )
    $("#blur, #brightness,#contrast,#hue-rotate,#hue-rotate2,#hue-rotate3,#saturate,#grayscale,#sepia,#invert").click(
      (event) =>
        cl = $(event.currentTarget).attr('id')
        if $("#content").hasClass(cl)
          $("#content").removeClass(cl)
        else
          $("#content").addClass(cl)
        return false
    )

  got_stream: (stream) =>
    video = $("#content")[0]
    $("#content").width($(window).width())
    $("#content").height($(window).height() - 50)
    console.log video
    console.log stream
    video.src = stream
    video.src = window.URL.createObjectURL(stream)

