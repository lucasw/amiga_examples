MASKED_FONT		equ 0

			if MASKED_FONT==1
BACKGROUND_COLOR	equ 4
			else
BACKGROUND_COLOR	equ 3
			endif

FONT_WIDTH		equ 8
FONT_HEIGHT		equ 8
SCREEN_WIDTH		equ 320
SCREEN_HEIGHT		equ 256
SCREEN_WIDTH_BYTES	equ (SCREEN_WIDTH/8)
SCREEN_WIDTH_WORDS	equ SCREEN_WIDTH_BYTES/2
BITPLANE_WIDTH_BYTES	equ (SCREEN_WIDTH_BYTES+2)
BITPLANE_WIDTH_WORDS	equ (SCREEN_WIDTH_WORDS+1)

			if NUM_COLORS==64
SCREEN_BIT_DEPTH	equ 6
			endif
			if NUM_COLORS==32
SCREEN_BIT_DEPTH	equ 5
			endif
			if NUM_COLORS==16
SCREEN_BIT_DEPTH	equ 4
			endif
			if NUM_COLORS==8
SCREEN_BIT_DEPTH	equ 3
			endif
			if NUM_COLORS==4
SCREEN_BIT_DEPTH	equ 2
			endif
			if NUM_COLORS==2
SCREEN_BIT_DEPTH	equ 1
			endif

SCREEN_RES		equ 8 	; 8=lo resolution, 4=hi resolution
RASTER_X_START		equ $81	; hard coded coordinates from hardware manual
RASTER_Y_START		equ $2c
RASTER_X_STOP		equ RASTER_X_START+SCREEN_WIDTH
RASTER_Y_STOP		equ RASTER_Y_START+256
IMAGESIZE		equ BITPLANE_WIDTH_BYTES*SCREEN_BIT_DEPTH*SCREEN_HEIGHT