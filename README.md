🛒 PG Supporter Shop - Discord Role-Locked Store
Reward your supporters with an exclusive shopping experience!

📦 What is PG Supporter Shop?
PG Supporter Shop is a premium, Discord-integrated shop system that restricts store access to players with specific Discord roles. Perfect for Patreon supporters, server boosters, VIP members, or any exclusive tier you want to reward!

✨ Features

🔒 Discord Role Locked - Only players with specified Discord roles can access the shop
🎯 ox_target Integration - Clean, immersive interaction with shop NPC
📦 ox_inventory Support - Fully integrated shop system
🔔 ox_lib Notifications - Beautiful notifications for access denied/granted
👤 Custom Shop Ped - Configurable NPC with animations
⚙️ Fully Configurable - Easy setup through config file
🛡️ Secure - Server-side role verification prevents exploits
⚡ Optimized - Lightweight and performance-friendly


🎮 How It Works

Player approaches the Supporter Shop NPC
Player interacts using ox_target
Server checks player's Discord roles via zdiscord
✅ Has role? → Shop opens with exclusive items
❌ No role? → Access denied notification


🛠️ Easy Configuration
lua-- Discord Role IDs that can access the shop
Config.AllowedRoles = {
    '1234567890123456789', -- Gold Supporter
    '1234567890123456780', -- Silver Supporter
}

-- Shop items - add anything from ox_inventory!
Config.ShopItems = {
    { name = 'outfit_bag', price = 5000 },
    { name = 'water', price = 10 },
    { name = 'burger', price = 25 },
}

-- NPC Location
Config.Ped = {
    model = 's_m_m_shopkeep_01',
    coords = vector4(392.92, -831.88, 29.29, 230.50),
}

📋 Dependencies

ox_inventory
ox_target
ox_lib
zdiscord


🎁 What's Included

✅ Full source code (escrow-free config)
✅ Easy installation guide
✅ Configurable shop items
✅ Configurable Discord roles
✅ Customizable NPC location & model
✅ Lifetime updates
✅ Support via Discord

💡 Use Cases

🎖️ Patreon Rewards - Exclusive items for your Patreon supporters
🚀 Server Boosters - Special shop for Discord boosters
👑 VIP Perks - Premium items for donators
🎮 Whitelisted Jobs - Role-locked equipment shops
🏆 Competition Rewards - Prize shops for event winners


🔧 Quick Setup

Install dependencies (ox_inventory, ox_target, ox_lib, zdiscord)
Add the resource to your server
Configure Discord role IDs in config.lua
Add your shop items
Set your NPC location
Restart and enjoy!


💬 Support
Need help? Join our Discord for fast, friendly support!

📝 Changelog
v1.0.0

Initial release
Discord role verification via zdiscord
ox_target NPC interaction
ox_inventory shop integration
Configurable items and roles


Give your supporters the VIP treatment they deserve - get PG Supporter Shop today!

Want me to adjust anything or create a shorter/longer version?
