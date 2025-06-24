-- Author: Ole Jørgen Brønner (olejorgenb@yahoo.no)
-- <https://gist.github.com/olejorgenb/a5194d9bc183dbe0bfb02aac18fe37f9>

function copyPermalink()
  local uri = mp.get_property("path")
  local bookmark = string.format(uri)
  local pipe = io.popen("wl-copy", "w")
  pipe:write(bookmark)
  pipe:close()
  mp.osd_message("Link copied to clipboard.")
end

mp.add_key_binding("ctrl+SPACE", "copy-permalink", copyPermalink)
