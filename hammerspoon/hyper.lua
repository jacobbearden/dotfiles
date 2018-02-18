local mappings = {
  { 'b', 'Google Chrome' },
  { 'c', 'Slack' },
  { 'e', 'Mail' },
  { 's', 'Spotify' },
  { 't', 'Terminal' },
}

for i, mapping in ipairs(mappings) doh
  prefix.bind('', mapping[1], function()
    hs.application.launchOrFocus(mapping[2])
  end)
end