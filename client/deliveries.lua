local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = true
PlayerJob = {}

RegisterNetEvent('qb-chickenfactory:deliveries:DeliverEggs', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"type"})
    QBCore.Functions.Progressbar('gettingDelivery', 'Getting Delivery...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    QBCore.Functions.Notify('You Accepted a delivery! It should appear in your emails soon!', 'primary', 7500)
    
    Wait(Config.DeliveryWait)

    TriggerServerEvent('qb-phone:server:sendNewMail', {
        sender = 'Automated Assistance',
        subject = 'Delivery of Eggs...',
        message = 'Delivery has been accepted by company. please deliver the -- Eggs -- to the customer.',
        })
    TriggerServerEvent('qb-chickenfactory:server:DeliveryItem')
    startdropoff()
    end)
end)

RegisterNetEvent('qb-chickenfactory:deliveries:KnockDoor', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"knock"})
    QBCore.Functions.Progressbar('knockingDoor', 'Knocking Door...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    QBCore.Functions.Notify('Delivery Successful, return to the shop', 'primary', 7500)

    TriggerServerEvent('qb-chickenfactory:server:KnockDoor')
    end)
end)

RegisterNetEvent("qb-chickenfactory:deliveries:ReceivePayment", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-chickenfactory:server:get:ReceiptChecker', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("filingReceipt", "Filing Receipt..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('qb-chickenfactory:server:ReceivePayment')
					TriggerServerEvent('QBCore:Server:RemoveItem', "receipt", 1)
							QBCore.Functions.Notify("You Filed a Receipt", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)


function startdropoff()
    local prob = math.random(1, 10)

    if prob == 1 then
        SetNewWaypoint(Config.DropOffPoint1)
        startdropoff1()
    elseif prob == 2 then
        SetNewWaypoint(Config.DropOffPoint2)
        startdropoff2()
    elseif prob == 3 then
        SetNewWaypoint(Config.DropOffPoint3)
        startdropoff3()
    elseif prob == 4 then
        SetNewWaypoint(Config.DropOffPoint4)
        startdropoff4()
    elseif prob == 5 then
        SetNewWaypoint(Config.DropOffPoint5)
        startdropoff5()
    elseif prob == 6 then
        SetNewWaypoint(Config.DropOffPoint6)
        startdropoff6()
    elseif prob == 7 then
        SetNewWaypoint(Config.DropOffPoint7)
        startdropoff7()
    elseif prob == 8 then
        SetNewWaypoint(Config.DropOffPoint8)
        startdropoff8()
    elseif prob == 9 then
        SetNewWaypoint(Config.DropOffPoint9)
        startdropoff9()
    elseif prob == 10 then
        SetNewWaypoint(Config.DropOffPoint10)
        startdropoff10()
    end
end

function startdropoff1()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint1, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end

function startdropoff2()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint2, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end

function startdropoff3()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint3, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end

function startdropoff4()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint4, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end

function startdropoff5()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint5, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end

function startdropoff6()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint6, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end

function startdropoff7()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint7, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end

function startdropoff8()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint8, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end

function startdropoff9()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint9, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end

function startdropoff10()
    exports['qb-target']:AddBoxZone("eggs", Config.DropOffPoint10, 1, 1, {
        name="eggs",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-chickenfactory:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "eggs",
            },
        },
        distance = 2.5
    })
end
