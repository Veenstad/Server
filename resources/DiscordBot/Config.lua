DiscordWebhookSystemInfos = 'https://discordapp.com/api/webhooks/478174469416812555/2UM8bM_1UWY9TuQipemIcuwsmsbar_VNiUuPHdd9hTIhvgDfXvGUs70RHJA_V_1fZYCN'
DiscordWebhookKillinglogs = 'https://discordapp.com/api/webhooks/478174469416812555/2UM8bM_1UWY9TuQipemIcuwsmsbar_VNiUuPHdd9hTIhvgDfXvGUs70RHJA_V_1fZYCN'
DiscordWebhookChat = 'https://discordapp.com/api/webhooks/478174469416812555/2UM8bM_1UWY9TuQipemIcuwsmsbar_VNiUuPHdd9hTIhvgDfXvGUs70RHJA_V_1fZYCN'

SystemAvatar = 'https://wiki.fivem.net/w/images/d/db/FiveM-Wiki.png'

UserAvatar = 'https://i.imgur.com/KIcqSYs.png'

SystemName = 'SYSTEM'


--[[ Special Commands formatting
		 *YOUR_TEXT*			--> Make Text Italics in Discord
		**YOUR_TEXT**			--> Make Text Bold in Discord
	   ***YOUR_TEXT***			--> Make Text Italics & Bold in Discord
		__YOUR_TEXT__			--> Underline Text in Discord
	   __*YOUR_TEXT*__			--> Underline Text and make it Italics in Discord
	  __**YOUR_TEXT**__			--> Underline Text and make it Bold in Discord
	 __***YOUR_TEXT***__		--> Underline Text and make it Italics & Bold in Discord
		~~YOUR_TEXT~~			--> Strikethrough Text in Discord
]]
-- Use 'USERNAME_NEEDED_HERE' without the quotes if you need a Users Name in a special command
-- Use 'USERID_NEEDED_HERE' without the quotes if you need a Users ID in a special command


-- These special commands will be printed differently in discord, depending on what you set it to
SpecialCommands = {
				   {'/ooc', '**[OOC]:**'},
				   {'/twt', '**[Twitter]: @USERNAME_NEEDED_HERE**'},
				   {'/911', '**[911]: (CALLER ID: [ USERNAME_NEEDED_HERE | USERID_NEEDED_HERE ])**'},
				  }

						
-- These blacklisted commands will not be printed in discord
BlacklistedCommands = {
					   '/AnyCommand',
					   '/AnyCommand2',
					  }

-- These Commands will use their own webhook
OwnWebhookCommands = {
					  {'/AnotherCommand', 'https://discordapp.com/api/webhooks/478174469416812555/2UM8bM_1UWY9TuQipemIcuwsmsbar_VNiUuPHdd9hTIhvgDfXvGUs70RHJA_V_1fZYCN'},
					  {'/AnotherCommand2', 'https://discordapp.com/api/webhooks/478174469416812555/2UM8bM_1UWY9TuQipemIcuwsmsbar_VNiUuPHdd9hTIhvgDfXvGUs70RHJA_V_1fZYCN'},
					  {'/ooc', 'https://discordapp.com/api/webhooks/478174469416812555/2UM8bM_1UWY9TuQipemIcuwsmsbar_VNiUuPHdd9hTIhvgDfXvGUs70RHJA_V_1fZYCN'},
					  {'/twt', 'https://discordapp.com/api/webhooks/563098406579601438/xsSudVrvZ6NtcNnLHdRE2jLSGuq9fFVh23WauANc_cbGaRNs2nwPoipjtfRC3TphT-64'},
					 }

-- These Commands will be sent as TTS messages
TTSCommands = {
			   '/Whatever',
			   '/Whatever2',
			  }

