ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--------- Menu -------

RMenu.Add('menu-tuto', 'main', RageUI.CreateMenu("Touches", "Menu Interaction"))
RMenu.Add('menu-tuto', 'touches', RageUI.CreateSubMenu(RMenu:Get('menu-tuto', 'main'), "Touche Bouton", "Touche Bouton"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('menu-tuto', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("~r~→~r~ ~s~Mes Touches", nil, {RightLabel = "~r~→→~r~"}, true, function(Hovered, Active, Selected)
            end, RMenu:Get('menu-tuto', 'touches'))

        end, function()
        end)
    
            RageUI.IsVisible(RMenu:Get('menu-tuto', 'touches'), true, true, true, function()

                RageUI.Separator("~b~↓ Vos Touches : ↓")
        RageUI.ButtonWithStyle("Extension de voix", "Pour Augmenter votre portée de voix", {RightLabel = "F1"}, true, function(Hovered, Active, Selected)   
        end)
        RageUI.ButtonWithStyle("Menu Admin", "Pour ouvrir le menu Admin", {RightLabel = "F2"}, true, function(Hovered, Active, Selected)
        end)
        RageUI.ButtonWithStyle("Vente de drogue", "Pour ouvrir le menu vente", {RightLabel = "F4"}, true, function(Hovered, Active, Selected)
        end)
        RageUI.ButtonWithStyle("Menu interaction", "Pour ouvrir votre menu interaction", {RightLabel = "F5"}, true, function(Hovered, Active, Selected)       
        end)

                RageUI.Separator("~b~↓ Vos Touches Chat : ↓")
        RageUI.ButtonWithStyle("Porter Quelqu'un", "Ceci sert a porter quelqu'un", {RightLabel = "/porter"}, true, function(Hovered, Active, Selected)   
        end)
        RageUI.ButtonWithStyle("Prendre en otage", "Ceci sert a prendre un otage ", {RightLabel = "/otage"}, true, function(Hovered, Active, Selected)
        end)

            end, function()
            end)

            Citizen.Wait(0)
        end
    end)






Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 344) then
            RageUI.Visible(RMenu:Get('menu-tuto', 'main'), not RageUI.Visible(RMenu:Get('menu-tuto', 'main')))
        end
    end
end)