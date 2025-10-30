# Crimson UI - Roblox GUI Library

Overview

Crimson UI is a modern, customizable GUI library for Roblox that provides a sleek interface with smooth animations and extensive theming capabilities. Designed for both desktop and mobile devices, it offers a comprehensive set of UI elements for creating professional-looking interfaces.

# Features

Core Features

· Multiple Themes: 15+ built-in color themes with easy switching
· Smooth Animations: Tween-based transitions for all interactions
· Mobile Support: Responsive design that adapts to touch devices
· Loading Screens: Customizable loading screen with spinner animation
· Draggable Windows: Click and drag the top bar to move windows
· Minimizable Interface: Collapse and expand the window as needed

UI Elements

· Buttons
· Toggles
· Sliders
· Text Inputs
· Dropdown Menus
· Color Pickers
· Labels
· Paragraphs
· Keybinds
· Sections
· Notifications

Installation

```lua
local CrimsonUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/CrimsonUI/library/refs/heads/main/main.lua"))()
```

Quick Start

```lua
-- Create a window
local Window = CrimsonUI:CreateWindow({
    Name = "My GUI",
    LoadingEnabled = true,
    LoadingTitle = "Loading Interface",
    LoadingSubtitle = "Please wait..."
})

-- Create a tab
local MainTab = Window:CreateTab({
    Name = "Main"
})

-- Add elements to the tab
MainTab:CreateButton({
    Name = "Click Me",
    Callback = function()
        print("Button clicked!")
    end
})
```

Window Configuration

CreateWindow Options

```lua
local Window = CrimsonUI:CreateWindow({
    Name = "Window Title",                    -- Window name displayed in title bar
    LoadingEnabled = true,                    -- Show loading screen (default: true)
    LoadingTitle = "Loading...",              -- Loading screen title
    LoadingSubtitle = "Initializing..."       -- Loading screen subtitle
})
```

# UI Elements Documentation

Button

Creates a clickable button with hover effects.

```lua
local MyButton = Tab:CreateButton({
    Name = "My Button",
    Callback = function()
        print("Button pressed!")
    end
})
```

Toggle

Creates a toggle switch with on/off states.

```lua
local MyToggle = Tab:CreateToggle({
    Name = "My Toggle",
    CurrentValue = false,
    Callback = function(Value)
        print("Toggle state:", Value)
    end
})

-- Programmatically set toggle state
MyToggle:Set(true)
```

Slider

Creates a draggable slider for numeric values.

```lua
local MySlider = Tab:CreateSlider({
    Name = "My Slider",
    Range = {0, 100},           -- Min and max values
    Increment = 1,              -- Step size
    CurrentValue = 50,          -- Starting value
    Callback = function(Value)
        print("Slider value:", Value)
    end
})

-- Programmatically set slider value
MySlider:Set(75)
```

Input

Creates a text input field.

```lua
local MyInput = Tab:CreateInput({
    Name = "Text Input",
    PlaceholderText = "Enter text here...",
    RemoveTextAfterFocusLost = false,  -- Clear text after pressing enter
    Callback = function(Text)
        print("Input text:", Text)
    end
})
```

Dropdown

Creates a dropdown menu with selectable options.

```lua
local MyDropdown = Tab:CreateDropdown({
    Name = "My Dropdown",
    Options = {"Option 1", "Option 2", "Option 3"},
    CurrentOption = "Option 1",
    Callback = function(Option)
        print("Selected:", Option)
    end
})

-- Programmatically set dropdown option
MyDropdown:Set("Option 2")
```

Color Picker

Creates a color picker with RGB and hex input.

```lua
local MyColorPicker = Tab:CreateColorPicker({
    Name = "Color Picker",
    Color = Color3.fromRGB(255, 0, 0),  -- Default color
    Callback = function(Color)
        print("Selected color:", Color)
    end
})

-- Programmatically set color
MyColorPicker:Set(Color3.fromRGB(0, 255, 0))
```

Label

Creates a simple text label.

```lua
local MyLabel = Tab:CreateLabel("This is a label")

-- Update label text
MyLabel:Set("Updated label text")
```

Paragraph

Creates a text paragraph with title and content.

```lua
local MyParagraph = Tab:CreateParagraph({
    Title = "Section Title",
    Content = "This is the content of the paragraph. It can contain multiple lines of text and will wrap automatically."
})

-- Update paragraph content
MyParagraph:Set({
    Title = "New Title",
    Content = "New content"
})
```

Keybind

Creates a keybind selector for keyboard inputs.

```lua
local MyKeybind = Tab:CreateKeybind({
    Name = "My Keybind",
    CurrentKeybind = "F",              -- Default key
    HoldToInteract = false,            -- True for hold, false for press
    Callback = function(IsHolding)     -- IsHolding is only used when HoldToInteract is true
        if IsHolding then
            print("Key held down")
        else
            print("Key pressed")
        end
    end
})

-- Programmatically set keybind
MyKeybind:Set("G")
```

Section

Creates a visual separator with a label.

```lua
local MySection = Tab:CreateSection("Settings")
```

# Advanced Features

Changing Themes

Switch between built-in themes dynamically:

```lua
-- Available themes: Crimson, Midnight, Ocean, Forest, Sunset, Violet, Rose, Azure, Amber, Emerald, Slate, Coral, Indigo, Teal, Plum
CrimsonUI:SetTheme("Ocean")
```

Notifications

Display temporary notifications:

```lua
CrimsonUI:Notify({
    Title = "Notification Title",
    Content = "This is the notification message",
    Duration = 5,           -- Seconds to display
    Icon = "!"              -- Optional icon text
})
```

Destroying the GUI

Remove the entire GUI from the screen:

```lua
CrimsonUI:Destroy()
```

Complete Example

```lua
local CrimsonUI = loadstring(game:HttpGet("YOUR_SCRIPT_URL"))()

-- Create window
local Window = CrimsonUI:CreateWindow({
    Name = "Example GUI",
    LoadingEnabled = true
})

-- Create tabs
local MainTab = Window:CreateTab({Name = "Main"})
local SettingsTab = Window:CreateTab({Name = "Settings"})

-- Main tab elements
MainTab:CreateSection("Actions")

MainTab:CreateButton({
    Name = "Test Button",
    Callback = function()
        CrimsonUI:Notify({
            Title = "Success",
            Content = "Button clicked successfully!",
            Duration = 3
        })
    end
})

MainTab:CreateToggle({
    Name = "Enable Feature",
    CurrentValue = true,
    Callback = function(Value)
        print("Feature enabled:", Value)
    end
})

-- Settings tab elements
SettingsTab:CreateSection("Preferences")

SettingsTab:CreateSlider({
    Name = "Volume",
    Range = {0, 100},
    Increment = 5,
    CurrentValue = 75,
    Callback = function(Value)
        print("Volume set to:", Value)
    end
})

SettingsTab:CreateDropdown({
    Name = "Theme Selector",
    Options = {"Crimson", "Ocean", "Forest", "Violet"},
    CurrentOption = "Crimson",
    Callback = function(Option)
        CrimsonUI:SetTheme(Option)
    end
})
```

Theme Customization

The library includes 15 built-in themes:

· Crimson (Default): Red-based theme
· Midnight: Dark blue theme
· Ocean: Blue ocean theme
· Forest: Green nature theme
· Sunset: Orange sunset theme
· Violet: Purple theme
· Rose: Pink theme
· Azure: Light blue theme
· Amber: Gold/yellow theme
· Emerald: Green gem theme
· Slate: Gray theme
· Coral: Red-pink theme
· Indigo: Deep purple theme
· Teal: Blue-green theme
· Plum: Purple-pink theme

Mobile Support

Crimson UI automatically detects mobile devices and adjusts:

· Larger touch targets
· Adjusted spacing and sizing
· Touch-optimized interactions

Performance

· Efficient element management
· Minimal performance impact
· Automatic cleanup when destroyed
· Optimized animations

Support

For issues or feature requests, please check the documentation or contact the developer. The library is designed to be stable and reliable for production use.

---

Crimson UI - A modern GUI solution for Roblox
