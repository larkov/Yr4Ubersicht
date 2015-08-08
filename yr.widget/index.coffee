# Replace yrimg with your 48h forecast url from http://yr.no
yrimg =	"http://www.yr.no/place/Sweden/Västra_Götaland/Gothenburg/meteogram.png"
imgsrc:	yrimg

command: ""

# Set the refres frequency (milliseconds) to every hour
refreshFrequency: 3600000

# Render the output.
render: (output) -> """
       <div id='container'>
       <div>
"""

update: (output, domEl) ->
  container = $(domEl).find('#container')
  content =
    """
    <img src=#{this.imgsrc}/>
    """
  $(container).html content

# CSS Style
style: """
  margin:0
  padding:0px
  left:306px
  top: 150px
  background:rgba(#000, .25)
  border-radius:10px
  background: rgb(255, 255, 255) transparent;
  background: rgba(255, 255, 255, 0.0);

  h2
    text-align:center
  .alt
    text-align:center
    margin:25px
  img
    margin:10px
"""
