-- Setting: Pandoc Lua filter to set `date` metadata to now + 2 hours (CET/CEST offset +02:00)

function Meta(meta)
  -- If the date metadata is not set or is the keyword 'now', override it
  local should_set = false
  if meta.date == nil then
    should_set = true
  else
    -- meta.date can be a MetaInlines/MetaString; convert to string safely
    local d = pandoc.utils.stringify(meta.date)
    if d == "now" then
      should_set = true
    end
  end

  if should_set then
    -- compute current time + 2 hours (seconds)
    local t = os.time() + 2 * 60 * 60
    -- format as UTC time then append +02:00 offset so Quarto parses as local+02
    local iso = os.date("!%Y-%m-%dT%H:%M:%S", t) .. "+02:00"
    meta.date = pandoc.MetaString(iso)
  end

  return meta
end
