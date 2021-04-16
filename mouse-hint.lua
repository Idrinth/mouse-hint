MouseHint = {}

local time = 0
local x = 0
local y = 0
function MouseHint.OnInitialize()
    CreateWindow("MouseHint", true)
    DynamicImageSetTexture("MouseHint", "mouse_marker", 0,0)
    WindowSetShowing("MouseHint", true)
end

function MouseHint.OnUpdate(elapsed)
    time = time + elapsed
    if time < 0.1 then
        return
    end
    time = time - 0.1
    if SystemData.MousePosition.x == x and SystemData.MousePosition.y == y then
        return
    end
    local length,height = WindowGetDimensions("Root")
    local px = nil
    local py = nil
    if SystemData.Settings.Resolution.useFullScreen then
        px=SystemData.Settings.Resolution.fullScreen.width
        py=SystemData.Settings.Resolution.fullScreen.height
    else
        px=SystemData.Settings.Resolution.windowed.width
        py=SystemData.Settings.Resolution.windowed.height
    end
    WindowClearAnchors("MouseHint")
    WindowAddAnchor(
        "MouseHint",
        "topleft",
        "Root",
        "center",
        SystemData.MousePosition.x/px * length,
        SystemData.MousePosition.y/py * height
    )
    x = SystemData.MousePosition.x
    y = SystemData.MousePosition.y
end