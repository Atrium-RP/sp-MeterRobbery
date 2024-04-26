Config = {}

-- Parking Meter Config --
Config.HeistCooldown = (60000 * 2) -- Parking Meter Cooldown

Config.RequiredPolice = 1 -- Parking Meter Required Police

Config.RequiredItem = 'screwdriverset' -- RequiredItem to rob Parking Meter

Config.ProgressBarInteger = 10000 -- Length for all Progress Bars

-- Parking Meter Props -- 
Config.ParkingMeterProps = {
    'prop_parknmeter_01',
    'prop_parknmeter_02'
}

-- Parking Meter Third-Eye / Rewards --
Config.MeterLabel = 'Ouvrir le boitier' -- Third-Eye Label
Config.MeterIcon = 'fas fa-parking' -- Third-Eye Icon

Config.RewardMoney = math.random(75, 150) -- Reward Money ($500 - $2,000)

Config.RewardMoneyMin = 75

Config.RewardMoneyMax = 125