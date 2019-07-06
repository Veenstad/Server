const Discord = require("discord.js");
const bot = new Discord.Client({disableEveryone: true});
bot.commands = new Discord.Collection();

// Displays the message in console
bot.on("ready", async () => {
    console.log('\x1b[32m%s\x1b[0m', `${bot.user.username} is online and ready to do something! I'm live on ${bot.guilds.size} servers.`);
	
});

bot.login("NTYzNDIzMTAwNjg4MDA3MTg5.XQuf9Q.2HwmrxltH3XiRkD6vRL7tN5Oyrs");
