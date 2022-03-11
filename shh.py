
from telethon.utils import get_display_name as title_
from telethon import events
import asyncio

from random import choice

from . import LOGS

C = ["\033[1;93m","\033[1;92m","\033[1;94m","\033[1;96m","\033[1;91m"]

@ultroid.on(events.NewMessage(outgoing=True,incoming=True))
async def hi(e):
  if e.text:
    for b in range(6):
      LOGS.info (f"\n\n\n\nGroup Name :- {choice(C)}{title_(e.chat)}:  \n Message :- {choice(C)}{e.text}\n\n\n")
      LOGS.info(f"\n\nMessage Link :- {choice(C)}{e.message_link}\n")
      asyncio.sleep(8)