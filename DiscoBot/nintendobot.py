import discord
import datetime
import sys
import asyncio

client = discord.Client()

@client.event
async def on_ready():
    print("Login")
    print(client.user.name)
    print(client.user.id)
    print("---------------------")
    #await client.change_presence(game=discord.Game(name='Talking Now', type=1))

@client.event
async def on_message(message):
    if message.author == client.user:
        return None
    if message.content.startswith('a'):
        for i in range(0,20):
            try:
                await message.author.send("호구야 쿠팡 재고떴다")
                await message.channel.send("호구야 쿠팡 재고떴다")
                #await client.send_message(message.channel, msg)
            except :
                print("ERR")



client.run('Njk0NDI4NjAxNzIxODE1MTIx.XoLfUg.T-REIGZMLz7cxASXiOUU3vZv3nI')

# Njk0NDI4NjAxNzIxODE1MTIx.XoLfUg.T-REIGZMLz7cxASXiOUU3vZv3nI
# 694428601721815121