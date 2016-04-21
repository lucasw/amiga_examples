
PIG_JUMP_PIXELS				equ 8
PIG_PAUSE_PIXELS			equ 16
PIG_MOVE_PIXELS				equ 2

FOREGROUND_DELAY_BIT			equ 0

FOREGROUND_SCROLL_SHIFT_CONVERT	     	equ 4
FOREGROUND_SCROLL_TILE_INDEX_CONVERT 	equ 3
FOREGROUND_SCROLL_PIXELS	     	equ 16

BACKGROUND_SCROLL_SHIFT_CONVERT	     	equ 4
BACKGROUND_SCROLL_TILE_INDEX_CONVERT 	equ 3
BACKGROUND_SCROLL_PIXELS		equ 16

FOREGROUND_PLAYAREA_WIDTH_WORDS		equ 24
FOREGROUND_PLAYAREA_RIGHT_MARGIN_BYTES	equ 12
FOREGROUND_PLAYAREA_HEIGHT_WORDS	equ 8
	
ITEM_SPRITE_HEIGHT			equ 15
ITEM_SPRITE_NUM_VERTICAL_SPRITES	equ 6
ITEM_SPRITE_BYTES			equ (ITEM_SPRITE_NUM_VERTICAL_SPRITES*(64+4))+4
ITEM_SPRITE_VSTART			equ 149
	
ITEM_X					equ 0
ITEM_LAGX				equ 2
ITEM_Y					equ 4
ITEM_LAGY				equ 6
ITEM_YEND				equ 8	
ITEM_LAGYEND				equ 10
ITEM_INDEX				equ 12
ITEM_STRUCT_SIZE			equ 16
ITEM_STRUCT_MULU_SHIFT			equ 4
ITEM_NUM_COIN_ANIMS			equ 7

SCREEN_WIDTH				equ 320
SCREEN_HEIGHT		    		equ 256
SCREEN_WIDTH_BYTES	    		equ (SCREEN_WIDTH/8)
SCREEN_WIDTH_WORDS	    		equ SCREEN_WIDTH_BYTES/2
BITPLANE_WIDTH		    		equ 352
BITPLANE_WIDTH_BYTES	    		equ BITPLANE_WIDTH/8
BITPLANE_WIDTH_WORDS	    		equ BITPLANE_WIDTH_BYTES/2
TILEMAP_WIDTH		    		equ 320
TILEMAP_WIDTH_BYTES	    		equ TILEMAP_WIDTH/8
TILEMAP_WIDTH_WORDS	    		equ TILEMAP_WIDTH_BYTES/2


SCREEN_BIT_DEPTH			equ 3

SCREEN_RES				equ 8 	; 8=lo resolution, 4=hi resolution
RASTER_X_START				equ $81	; hard coded coordinates from hardware manual
RASTER_Y_START				equ $2c
RASTER_X_STOP				equ RASTER_X_START+SCREEN_WIDTH
RASTER_Y_STOP				equ RASTER_Y_START+256
IMAGESIZE				equ BITPLANE_WIDTH_BYTES*SCREEN_BIT_DEPTH*SCREEN_HEIGHT