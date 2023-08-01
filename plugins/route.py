#white_dEvil_Bots

from aiohttp import web

routes = web.RouteTableDef()

@routes.get("/", allow_head=True)
async def root_route_handler(request):
    return web.json_response("Hosted by WD bots - https://t.me/white_dEvil_Bots")
