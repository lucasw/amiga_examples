
MPANEL_COPPER_WAIT			equ $9ad1 ; controls the vertical position of the message panel

PLAYER_MOVE_UP				equ 1
PLAYER_MOVE_DOWN			equ 2
PLAYER_MOVE_LEFT			equ 3
PLAYER_MOVE_RIGHT			equ 4

PLAYER_INITIAL_X			equ $c0
PLAYER_LEFT_X				equ $c0
PLAYER_INITIAL_Y			equ $e4-32
PLAYER_BOTTOM_Y				equ $e4+16
PLAYER_TOP_Y				equ (PLAYER_BOTTOM_Y-(7*16))
PLAYER_SPRITE_VERTICAL_BYTES		equ ((16*4)+12)

PLAYER_JUMP_PIXELS			equ 8  ; PLAYER_JUMP_PIXELS * PLAYER_MOVE_PIXELS must equal 16
PLAYER_MOVE_PIXELS			equ 2

PLAYER_PAUSE_PIXELS			equ 12 ; number of pixel waits between jumps
PLAYER_CHECK_MISS_PIXELS		equ 10
PLAYER_FAST_PAUSE_PIXELS		equ 4 ; number of pixel waits between jumps
PLAYER_FAST_CHECK_MISS_PIXELS		equ 2



PATHWAY_FADE_TIMER_COUNT		equ 100

FOREGROUND_DELAY_BIT			equ 0
FOREGROUND_SCROLL_SHIFT_CONVERT	     	equ 4
FOREGROUND_SCROLL_TILE_INDEX_CONVERT 	equ 3
FOREGROUND_SCROLL_PIXELS	     	equ 16
FOREGROUND_PLAYAREA_WIDTH_WORDS		equ 24
FOREGROUND_PLAYAREA_RIGHT_MARGIN_BYTES	equ 12
FOREGROUND_PLAYAREA_HEIGHT_WORDS	equ 8
FOREGROUND_MOVING_COUNTER		equ 50

BACKGROUND_SCROLL_SHIFT_CONVERT	     	equ 4
BACKGROUND_SCROLL_TILE_INDEX_CONVERT 	equ 3
BACKGROUND_SCROLL_PIXELS		equ 16
	
ITEM_SPRITE_HEIGHT			equ 15
ITEM_SPRITE_SPACING			equ 16
ITEM_SPRITE_NUM_VERTICAL_SPRITES	equ 6
ITEM_SPRITE_VERTICAL_BYTES		equ ((ITEM_SPRITE_HEIGHT*4)+4)
ITEM_SPRITE_BYTES			equ (ITEM_SPRITE_NUM_VERTICAL_SPRITES*ITEM_SPRITE_VERTICAL_BYTES)+4
ITEM_SPRITE_VSTART			equ 149
ITEM_NUM_SLOTS				equ (8*3)
ITEM_SPRITE_HORIZONTAL_START_PIXELS	equ 32
ITEM_SPRITE_Y_COLLISION_OFFSET		equ 1
ITEM_SPRITE_ARROW_INDEX			equ 16
ITEM_SPRITE_COINB_INDEX			equ 8

;item control struct offsets
ITEM_X					equ 0
ITEM_LAGX				equ 2
ITEM_Y					equ 4
ITEM_SPRITE				equ 6
ITEM_INDEX				equ 8
ITEM_SPRITE_ENABLED			equ 10
ITEM_SPRITE_ADDRESS			equ 12
ITEM_STRUCT_SIZE			equ 16
ITEM_STRUCT_MULU_SHIFT			equ 4
ITEM_NUM_COIN_ANIMS			equ 7


BIGBANG_ANIM_DELAY			equ 4
BIGBANG_POST_DELAY			equ 15

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