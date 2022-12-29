
local WIDGET, VERSION = 'InputBoxGroup', 1

local GUI = LibStub('NetEaseGUI-2.0')
local InputBoxGroup = GUI:NewClass(WIDGET, nil, VERSION)
if not InputBoxGroup then
    return
end

InputBoxGroup.objectOwners = {}

local function OnTabPressed(self)
    local owner = InputBoxGroup:GetInputBoxOwner(self)
    if owner then
        if IsShiftKeyDown() then
            owner:GetPrevInputBox(self):SetFocus()
        else
            owner:GetNextInputBox(self):SetFocus()
        end
    end
end

function InputBoxGroup:Constructor()
    self.objectOrders = {}
    self.objectIds = {}
end

function InputBoxGroup:RegisterInputBox(inputBox)
    tinsert(self.objectOrders, inputBox)

    self.objectOwners[inputBox] = self
    self.objectIds[inputBox] = #self.objectOrders

    inputBox:SetScript('OnTabPressed', OnTabPressed)
end

function InputBoxGroup:IterateInputBoxes()
    return ipairs(self.objectOrders)
end

function InputBoxGroup:ClearFocus()
    for _, inputBox in ipairs(self.objectOrders) do
        inputBox:ClearFocus()
    end
end

function InputBoxGroup:GetInputBoxID(inputBox)
    return self.objectIds[inputBox]
end

function InputBoxGroup:GetInputBoxOwner(inputBox)
    return self.objectOwners[inputBox]
end

function InputBoxGroup:GetNextInputBox(inputBox)
    local index = self:GetInputBoxID(inputBox)
    if index then
        local count = #self.objectOrders
        local i = index
        local object
        repeat
            i = i % count + 1
            object = self.objectOrders[i]
            if object:IsVisible() and object:IsEnabled() then
                return object
            end
        until i == index
    end
    return inputBox
end

function InputBoxGroup:GetPrevInputBox(inputBox)
    local index = self:GetInputBoxID(inputBox)
    if index then
        local count = #self.objectOrders
        local i = index
        local object
        repeat
            i = i == 1 and count or i - 1
            object = self.objectOrders[i]
            if object:IsVisible() and object:IsEnabled() then
                return object
            end
        until i == index
    end
    return inputBox
end
