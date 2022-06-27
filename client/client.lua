local QBCore = exports['arabcodingteam-core']:GetCoreObject()
------------------------------------------------------------
------------------------------------------------------------

RegisterNetEvent('open:candy')
AddEventHandler('open:candy', function ()
	local ShopItems = {}
	ShopItems.label = "Candy Machine"
	ShopItems.items = Config.CandyItem
	ShopItems.slots = #Config.CandyItem
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "Candyshop_"..math.random(1, 99), ShopItems) 
end)

------------------------------------------------------------

RegisterNetEvent('open:coffee')
AddEventHandler('open:coffee', function ()
	local ShopItems = {}
	ShopItems.label = "Coffee Machine"
	ShopItems.items = Config.CoffeeItem
	ShopItems.slots = #Config.CoffeeItem
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "Coffeeshop_"..math.random(1, 99), ShopItems) 
end)

------------------------------------------------------------

RegisterNetEvent('open:vending')
AddEventHandler('open:vending', function ()
	local ShopItems = {}
	ShopItems.label = "Vending Machine"
	ShopItems.items = Config.VendingItem
	ShopItems.slots = #Config.VendingItem
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "Vendingshop_"..math.random(1, 99), ShopItems) 
end)

------------------------------------------------------------
local prop = {
	"prop_vend_soda_01",
	"prop_vend_soda_02",
	"prop_vend_water_01"
}
exports['arabcodingteam-target']:AddTargetModel(prop, {
	options = {
		{
			type = "client",
			event = "open:vending",
			icon = "fas fa-shopping-basket",
			label = "vending machine",
		},
	},
	distance = 2.5
})
------------------------------------------------------------

local prop = {
	"prop_vend_coffe_01",

}
exports['arabcodingteam-target']:AddTargetModel(prop, {
	options = {
		{
			type = "client",
			event = "open:coffee",
			icon = "fas fa-shopping-basket",
			label = "coffee machine",
		},
	},
	distance = 2.5
})
------------------------------------------------------------

local prop = {
	"prop_vend_snak_01",
	"prop_vend_snak_01_tu"

}
exports['arabcodingteam-target']:AddTargetModel(prop, {
	options = {
		{
			type = "client",
			event = "open:candy",
			icon = "fas fa-shopping-basket",
			label = "candy machine",
		},
	},
	distance = 2.5
})
------------------------------------------------------------
