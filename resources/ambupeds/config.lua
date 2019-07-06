ems_models = {'s_m_y_autopsy_01','s_m_m_scientist_01','s_f_y_scrubs_01','s_m_m_doctor_01'}
menu_options = {

    {name = "Ziekenhuis Personeel", f = listModels, param = ems_models},
}
player_data  = {
    model = GetHashKey("mp_m_freemode_01"),
    new = true,
    clothing = {
        drawables = {},
        textures = {
            1,1,1
        },
        palette = {},
    },
    props = {
        drawables = {},
        textures = {},
    },
    overlays = {
        drawables = {},
        opacity = {1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0},
        colours = {
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
            {colourType = 0, colour = 0},
        },
    },
}
local clothing_shops = {
    {name="Ziekenhuis Personeel", id=280, x=337.12, y=-592.75, z=42.28},

}
incircle = false
Citizen.CreateThread(function()
    for _, item in pairs(clothing_shops) do
      --item.blip = AddBlipForCoord(item.x, item.y, item.z)
      --SetBlipSprite(item.blip, item.id)
      --SetBlipColour(item.blip, item.colour)
      --SetBlipAsShortRange(item.blip, true)
      --BeginTextCommandSetBlipName("STRING")
      --AddTextComponentString(item.name)
      --EndTextCommandSetBlipName(item.blip)
    end
    while true do
        Citizen.Wait(0)
        local pos = GetEntityCoords(GetPlayerPed(-1), true)
        for k,v in ipairs(clothing_shops) do
            if(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) < 15.0)then
                DrawMarker(1, v.x, v.y, v.z - 1, 0, 0, 0, 0, 0, 0, 3.0001, 3.0001, 0.5001, 1555, 0, 0,165, 0, 0, 0,0)
                if(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) < 2.0)then
                    if (incircle == false) then
                        DisplayHelpText("druk op ~INPUT_CONTEXT~ om een personage te kiezen.")
                    end
                    incircle = true
                    if IsControlJustReleased(1, 51) then -- INPUT_CELLPHONE_DOWN
                        GUI.maxVisOptions = 20
                        titleTextSize = {0.85, 0.80} ------------ {p1, Size}                                      
                        titleRectSize = {0.23, 0.085} ----------- {Width, Height}                                 
                        optionTextSize = {0.5, 0.5} ------------- {p1, Size}                                      
                        optionRectSize = {0.23, 0.035} ---------- {Width, Height}           
                        menuX = 0.745 ----------------------------- X position of the menu                          
                        menuXOption = 0.11 --------------------- X postiion of Menu.Option text                  
                        menuXOtherOption = 0.06 ---------------- X position of Bools, Arrays etc text            
                        menuYModify = 0.1500 -------------------- Default: 0.1174   ------ Top bar                
                        menuYOptionDiv = 4.285 ------------------ Default: 3.56   ------ Distance between buttons 
                        menuYOptionAdd = 0.21 ------------------ Default: 0.142  ------ Move buttons up and down
                        clothing_menu = not clothing_menu
                        OpenClothes()
                    end
                elseif(Vdist(pos.x, pos.y, pos.z, v.x, v.y, v.z) > 3.0)then
                    incircle = false
                    if clothing_menu then
                        save()
                    end
                    clothing_menu = false
                end
            end
        end
        if clothing_menu then
            Menu.DisplayCurMenu()
        end
    end
end)