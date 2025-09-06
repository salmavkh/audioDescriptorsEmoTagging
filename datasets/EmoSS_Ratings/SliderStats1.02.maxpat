{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 327.0, 129.0, 528.0, 409.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 355.0, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 260.0, 348.0, 27.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Avenir",
					"fontsize" : 18.0,
					"id" : "obj-13",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 40.0, 253.0, 204.0, 73.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.0, 298.0, 267.0, 73.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_longname" : "gain[2]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 856.0, 37.5, 150.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.800826877355576, 3.0, 163.398346245288849, 20.0 ],
					"text" : "1. Set Audio Output Device"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"fontface" : 1,
					"fontname" : "Avenir",
					"fontsize" : 16.0,
					"id" : "obj-98",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.0, 344.0, 169.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 23.0, 106.0, 28.0 ],
					"rounded" : 18.0,
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_lcd_bg"
						}

					}
,
					"text" : "Audio Setup",
					"texton" : "Audio Setup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 116.0, 392.5, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 520.0, 234.0, 150.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 426.0, 208.0, 73.0, 47.0 ],
					"text" : "or selected individually by number"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 856.0, 160.0, 153.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 263.5, 258.0, 160.0, 20.0 ],
					"text" : "Sounds can be played again"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 856.0, 160.0, 153.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 303.0, 298.0, 165.0, 33.0 ],
					"text" : "7. When finished, write the .csv and .json files to disk."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 841.0, 145.0, 150.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 235.0, 97.0, 223.0, 20.0 ],
					"text" : "6. Set the descriptor rating for the sound"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 841.0, 108.433738946914673, 150.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 235.0, 3.0, 195.0, 20.0 ],
					"text" : "5. Go to next or previous sound"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 841.0, 70.0, 150.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.0, 224.0, 159.0, 20.0 ],
					"text" : "4. Initialize or Load Previous"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 841.0, 46.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 165.0, 123.0, 20.0 ],
					"text" : "3. Select a Descriptor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 841.0, 22.5, 150.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 94.0, 163.398346245288849, 20.0 ],
					"text" : "2. Drop Sounds Folder Here"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "clear", "set", "int" ],
					"patching_rect" : [ 707.0, 494.0, 71.0, 22.0 ],
					"text" : "t clear set 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
					"fontface" : 1,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-57",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 703.5, 365.0, 155.0, 67.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.0, 249.5, 83.0, 38.0 ],
					"rounded" : 18.0,
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_macro_title"
						}

					}
,
					"text" : "Init",
					"texton" : "Init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 526.5, 730.0, 94.0, 22.0 ],
					"text" : "prepend symbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 466.5, 688.0, 50.0, 22.0 ],
					"text" : "Dense"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 460.0, 641.0, 92.0, 22.0 ],
					"text" : "regexp (.+).json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 460.0, 612.0, 63.0, 22.0 ],
					"text" : "route read"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
					"fontface" : 1,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-19",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 484.0, 382.0, 104.0, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 248.5, 79.0, 39.0 ],
					"rounded" : 18.0,
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_macro_title"
						}

					}
,
					"text" : "Load",
					"texton" : "Load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 358.0, 821.0, 81.0, 22.0 ],
					"text" : "prepend write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 358.0, 792.0, 145.0, 22.0 ],
					"text" : "sprintf symout %s%s.json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 508.0, 104.0, 36.0, 22.0 ],
					"text" : "t b -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 555.0, 166.0, 29.5, 22.0 ],
					"text" : "+ 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 577.0, 98.0, 32.0, 22.0 ],
					"text" : "t b 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"fontface" : 1,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-5",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 409.0, 22.5, 155.0, 67.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 25.0, 125.0, 67.0 ],
					"rounded" : 18.0,
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_lcd_bg"
						}

					}
,
					"text" : "Previous",
					"texton" : "Previous"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.12770003080368, 0.999774515628815, 0.999047517776489, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 555.0, 134.0, 59.0, 22.0 ],
					"text" : "pv CNum"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
					"fontface" : 1,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-119",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 201.0, 657.5, 104.0, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 301.0, 336.0, 167.0, 45.0 ],
					"rounded" : 18.0,
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_macro_title"
						}

					}
,
					"text" : "Write",
					"texton" : "Write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 201.0, 821.0, 81.0, 22.0 ],
					"text" : "prepend write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 201.0, 708.0, 42.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 201.0, 792.0, 141.0, 22.0 ],
					"text" : "sprintf symout %s%s.csv"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "RatingsGrab", "File,Value", "clear" ],
					"patching_rect" : [ 224.0, 866.0, 168.0, 22.0 ],
					"text" : "t RatingsGrab File\\,Value clear"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.12770003080368, 0.999774515628815, 0.999047517776489, 1.0 ],
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 323.0, 757.0, 79.0, 22.0 ],
					"text" : "pv Descriptor"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.12770003080368, 0.999774515628815, 0.999047517776489, 1.0 ],
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 567.5, 797.0, 79.0, 22.0 ],
					"text" : "pv Descriptor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"items" : [ "Dense", ",", "Chaotic", ",", "Dirty", ",", "Cheerful", ",", "Desolate", ",", "Aggressive", ",", "Safe", ",", "Soothing" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 526.5, 765.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.0, 187.0, 155.796692490577698, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.12770003080368, 0.999774515628815, 0.999047517776489, 1.0 ],
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 201.0, 757.0, 74.0, 22.0 ],
					"text" : "pv CSVPath"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.12770003080368, 0.999774515628815, 0.999047517776489, 1.0 ],
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1002.0, 382.0, 74.0, 22.0 ],
					"text" : "pv CSVPath"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1002.0, 352.867481589317322, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1002.0, 290.518075227737427, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1002.0, 316.867481589317322, 201.0, 22.0 ],
					"text" : "regexp ES_Corpus/ @substitute %0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 224.0, 978.0, 96.0, 22.0 ],
					"text" : "sprintf %s\\\"\\,%.2f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.0, 718.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 364.0, 688.0, 41.0, 22.0 ],
					"text" : "unjoin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 698.0, 612.0, 73.0, 22.0 ],
					"text" : "prepend get"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-70",
					"maxclass" : "flonum",
					"numdecimalplaces" : 3,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 903.0, 692.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.843410849571228, 512.048211693763733, 110.0, 22.0 ],
					"text" : "prepend setsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.843410849571228, 480.0, 131.0, 22.0 ],
					"text" : "sprintf symout %ld.wav"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 337.349410057067871, 178.313259601593018, 94.0, 22.0 ],
					"text" : "prepend symbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 566.0, 492.0, 108.0, 22.0 ],
					"text" : "prepend maximum"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-51",
					"maxclass" : "number",
					"maximum" : 600,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 548.0, 540.5, 76.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 426.0, 165.0, 56.0, 41.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 829.0, 708.0, 39.0, 22.0 ],
					"text" : "zl join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 829.0, 624.0, 29.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.12770003080368, 0.999774515628815, 0.999047517776489, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 829.0, 668.0, 59.0, 22.0 ],
					"text" : "pv CNum"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 161.0, 1005.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 484.0, 531.0, 33.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 548.0, 322.891578197479248, 69.0, 22.0 ],
					"text" : "route count"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "count", "" ],
					"patching_rect" : [ 746.987979412078857, 223.325302362442017, 51.0, 22.0 ],
					"text" : "t count l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 746.987979412078857, 192.0, 85.0, 22.0 ],
					"text" : "prepend prefix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 971.0, 191.0, 141.0, 74.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.0, 55.0, 167.0, 98.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 957.5, 536.0, 38.0, 22.0 ],
					"text" : "zl reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 412.247002243995667, 688.0, 50.0, 22.0 ],
					"text" : "600"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.12770003080368, 0.999774515628815, 0.999047517776489, 1.0 ],
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 395.0, 655.0, 59.0, 22.0 ],
					"text" : "pv CNum"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 224.0, 909.0, 107.0, 22.0 ],
					"text" : "prepend dictionary"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 395.0, 612.0, 44.0, 22.0 ],
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.12770003080368, 0.999774515628815, 0.999047517776489, 1.0 ],
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 669.0, 641.0, 59.0, 22.0 ],
					"text" : "pv CNum"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 548.0, 586.0, 140.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 548.0, 648.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 548.0, 683.0, 101.0, 22.0 ],
					"text" : "prepend contains"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 388.5, 35.0, 20.0 ],
					"text" : "3853"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 224.0, 1012.0, 62.0, 22.0 ],
					"text" : "append cr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "int" ],
					"patching_rect" : [ 201.0, 1054.0, 40.0, 22.0 ],
					"text" : "text"
				}

			}
, 			{
				"box" : 				{
					"autopopulate" : 1,
					"bgcolor" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color1" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color2" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"depth" : 1,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-66",
					"items" : [ "1.wav", ",", "10.wav", ",", "100.wav", ",", "101.wav", ",", "102.wav", ",", "103.wav", ",", "104.wav", ",", "105.wav", ",", "106.wav", ",", "107.wav", ",", "108.wav", ",", "109.wav", ",", "11.wav", ",", "110.wav", ",", "111.wav", ",", "112.wav", ",", "113.wav", ",", "114.wav", ",", "115.wav", ",", "116.wav", ",", "117.wav", ",", "118.wav", ",", "119.wav", ",", "12.wav", ",", "120.wav", ",", "121.wav", ",", "122.wav", ",", "123.wav", ",", "124.wav", ",", "125.wav", ",", "126.wav", ",", "127.wav", ",", "128.wav", ",", "129.wav", ",", "13.wav", ",", "130.wav", ",", "131.wav", ",", "132.wav", ",", "133.wav", ",", "134.wav", ",", "135.wav", ",", "136.wav", ",", "137.wav", ",", "138.wav", ",", "139.wav", ",", "14.wav", ",", "140.wav", ",", "141.wav", ",", "142.wav", ",", "143.wav", ",", "144.wav", ",", "145.wav", ",", "146.wav", ",", "147.wav", ",", "148.wav", ",", "149.wav", ",", "15.wav", ",", "150.wav", ",", "151.wav", ",", "152.wav", ",", "153.wav", ",", "154.wav", ",", "155.wav", ",", "156.wav", ",", "157.wav", ",", "158.wav", ",", "159.wav", ",", "16.wav", ",", "160.wav", ",", "161.wav", ",", "162.wav", ",", "163.wav", ",", "164.wav", ",", "165.wav", ",", "166.wav", ",", "167.wav", ",", "168.wav", ",", "169.wav", ",", "17.wav", ",", "170.wav", ",", "171.wav", ",", "172.wav", ",", "173.wav", ",", "174.wav", ",", "175.wav", ",", "176.wav", ",", "177.wav", ",", "178.wav", ",", "179.wav", ",", "18.wav", ",", "180.wav", ",", "181.wav", ",", "182.wav", ",", "183.wav", ",", "184.wav", ",", "185.wav", ",", "186.wav", ",", "187.wav", ",", "188.wav", ",", "189.wav", ",", "19.wav", ",", "190.wav", ",", "191.wav", ",", "192.wav", ",", "193.wav", ",", "194.wav", ",", "195.wav", ",", "196.wav", ",", "197.wav", ",", "198.wav", ",", "199.wav", ",", "2.wav", ",", "20.wav", ",", "200.wav", ",", "201.wav", ",", "202.wav", ",", "203.wav", ",", "204.wav", ",", "205.wav", ",", "206.wav", ",", "207.wav", ",", "208.wav", ",", "209.wav", ",", "21.wav", ",", "210.wav", ",", "211.wav", ",", "212.wav", ",", "213.wav", ",", "214.wav", ",", "215.wav", ",", "216.wav", ",", "217.wav", ",", "218.wav", ",", "219.wav", ",", "22.wav", ",", "220.wav", ",", "221.wav", ",", "222.wav", ",", "223.wav", ",", "224.wav", ",", "225.wav", ",", "226.wav", ",", "227.wav", ",", "228.wav", ",", "229.wav", ",", "23.wav", ",", "230.wav", ",", "231.wav", ",", "232.wav", ",", "233.wav", ",", "234.wav", ",", "235.wav", ",", "236.wav", ",", "237.wav", ",", "238.wav", ",", "239.wav", ",", "24.wav", ",", "240.wav", ",", "241.wav", ",", "242.wav", ",", "243.wav", ",", "244.wav", ",", "245.wav", ",", "246.wav", ",", "247.wav", ",", "248.wav", ",", "249.wav", ",", "25.wav", ",", "250.wav", ",", "251.wav", ",", "252.wav", ",", "253.wav", ",", "254.wav", ",", "255.wav", ",", "256.wav", ",", "257.wav", ",", "258.wav", ",", "259.wav", ",", "26.wav", ",", "260.wav", ",", "261.wav", ",", "262.wav", ",", "263.wav", ",", "264.wav", ",", "265.wav", ",", "266.wav", ",", "267.wav", ",", "268.wav", ",", "269.wav", ",", "27.wav", ",", "270.wav", ",", "271.wav", ",", "272.wav", ",", "273.wav", ",", "274.wav", ",", "275.wav", ",", "276.wav", ",", "277.wav", ",", "278.wav", ",", "279.wav", ",", "28.wav", ",", "280.wav", ",", "281.wav", ",", "282.wav", ",", "283.wav", ",", "284.wav", ",", "285.wav", ",", "286.wav", ",", "287.wav", ",", "288.wav", ",", "289.wav", ",", "29.wav", ",", "290.wav", ",", "291.wav", ",", "292.wav", ",", "293.wav", ",", "294.wav", ",", "295.wav", ",", "296.wav", ",", "297.wav", ",", "298.wav", ",", "299.wav", ",", "3.wav", ",", "30.wav", ",", "300.wav", ",", "301.wav", ",", "302.wav", ",", "303.wav", ",", "304.wav", ",", "305.wav", ",", "306.wav", ",", "307.wav", ",", "308.wav", ",", "309.wav", ",", "31.wav", ",", "310.wav", ",", "311.wav", ",", "312.wav", ",", "313.wav", ",", "314.wav", ",", "315.wav", ",", "316.wav", ",", "317.wav", ",", "318.wav", ",", "319.wav", ",", "32.wav", ",", "320.wav", ",", "321.wav", ",", "322.wav", ",", "323.wav", ",", "324.wav", ",", "325.wav", ",", "326.wav", ",", "327.wav", ",", "328.wav", ",", "329.wav", ",", "33.wav", ",", "330.wav", ",", "331.wav", ",", "332.wav", ",", "333.wav", ",", "334.wav", ",", "335.wav", ",", "336.wav", ",", "337.wav", ",", "338.wav", ",", "339.wav", ",", "34.wav", ",", "340.wav", ",", "341.wav", ",", "342.wav", ",", "343.wav", ",", "344.wav", ",", "345.wav", ",", "346.wav", ",", "347.wav", ",", "348.wav", ",", "349.wav", ",", "35.wav", ",", "350.wav", ",", "351.wav", ",", "352.wav", ",", "353.wav", ",", "354.wav", ",", "355.wav", ",", "356.wav", ",", "357.wav", ",", "358.wav", ",", "359.wav", ",", "36.wav", ",", "360.wav", ",", "361.wav", ",", "362.wav", ",", "363.wav", ",", "364.wav", ",", "365.wav", ",", "366.wav", ",", "367.wav", ",", "368.wav", ",", "369.wav", ",", "37.wav", ",", "370.wav", ",", "371.wav", ",", "372.wav", ",", "373.wav", ",", "374.wav", ",", "375.wav", ",", "376.wav", ",", "377.wav", ",", "378.wav", ",", "379.wav", ",", "38.wav", ",", "380.wav", ",", "381.wav", ",", "382.wav", ",", "383.wav", ",", "384.wav", ",", "385.wav", ",", "386.wav", ",", "387.wav", ",", "388.wav", ",", "389.wav", ",", "39.wav", ",", "390.wav", ",", "391.wav", ",", "392.wav", ",", "393.wav", ",", "394.wav", ",", "395.wav", ",", "396.wav", ",", "397.wav", ",", "398.wav", ",", "399.wav", ",", "4.wav", ",", "40.wav", ",", "400.wav", ",", "401.wav", ",", "402.wav", ",", "403.wav", ",", "404.wav", ",", "405.wav", ",", "406.wav", ",", "407.wav", ",", "408.wav", ",", "409.wav", ",", "41.wav", ",", "410.wav", ",", "411.wav", ",", "412.wav", ",", "413.wav", ",", "414.wav", ",", "415.wav", ",", "416.wav", ",", "417.wav", ",", "418.wav", ",", "419.wav", ",", "42.wav", ",", "420.wav", ",", "421.wav", ",", "422.wav", ",", "423.wav", ",", "424.wav", ",", "425.wav", ",", "426.wav", ",", "427.wav", ",", "428.wav", ",", "429.wav", ",", "43.wav", ",", "430.wav", ",", "431.wav", ",", "432.wav", ",", "433.wav", ",", "434.wav", ",", "435.wav", ",", "436.wav", ",", "437.wav", ",", "438.wav", ",", "439.wav", ",", "44.wav", ",", "440.wav", ",", "441.wav", ",", "442.wav", ",", "443.wav", ",", "444.wav", ",", "445.wav", ",", "446.wav", ",", "447.wav", ",", "448.wav", ",", "449.wav", ",", "45.wav", ",", "450.wav", ",", "451.wav", ",", "452.wav", ",", "453.wav", ",", "454.wav", ",", "455.wav", ",", "456.wav", ",", "457.wav", ",", "458.wav", ",", "459.wav", ",", "46.wav", ",", "460.wav", ",", "461.wav", ",", "462.wav", ",", "463.wav", ",", "464.wav", ",", "465.wav", ",", "466.wav", ",", "467.wav", ",", "468.wav", ",", "469.wav", ",", "47.wav", ",", "470.wav", ",", "471.wav", ",", "472.wav", ",", "473.wav", ",", "474.wav", ",", "475.wav", ",", "476.wav", ",", "477.wav", ",", "478.wav", ",", "479.wav", ",", "48.wav", ",", "480.wav", ",", "481.wav", ",", "482.wav", ",", "483.wav", ",", "484.wav", ",", "485.wav", ",", "486.wav", ",", "487.wav", ",", "488.wav", ",", "489.wav", ",", "49.wav", ",", "490.wav", ",", "491.wav", ",", "492.wav", ",", "493.wav", ",", "494.wav", ",", "495.wav", ",", "496.wav", ",", "497.wav", ",", "498.wav", ",", "499.wav", ",", "5.wav", ",", "50.wav", ",", "500.wav", ",", "501.wav", ",", "502.wav", ",", "503.wav", ",", "504.wav", ",", "505.wav", ",", "506.wav", ",", "507.wav", ",", "508.wav", ",", "509.wav", ",", "51.wav", ",", "510.wav", ",", "511.wav", ",", "512.wav", ",", "513.wav", ",", "514.wav", ",", "515.wav", ",", "516.wav", ",", "517.wav", ",", "518.wav", ",", "519.wav", ",", "52.wav", ",", "520.wav", ",", "521.wav", ",", "522.wav", ",", "523.wav", ",", "524.wav", ",", "525.wav", ",", "526.wav", ",", "527.wav", ",", "528.wav", ",", "529.wav", ",", "53.wav", ",", "530.wav", ",", "531.wav", ",", "532.wav", ",", "533.wav", ",", "534.wav", ",", "535.wav", ",", "536.wav", ",", "537.wav", ",", "538.wav", ",", "539.wav", ",", "54.wav", ",", "540.wav", ",", "541.wav", ",", "542.wav", ",", "543.wav", ",", "544.wav", ",", "545.wav", ",", "546.wav", ",", "547.wav", ",", "548.wav", ",", "549.wav", ",", "55.wav", ",", "550.wav", ",", "551.wav", ",", "552.wav", ",", "553.wav", ",", "554.wav", ",", "555.wav", ",", "556.wav", ",", "557.wav", ",", "558.wav", ",", "559.wav", ",", "56.wav", ",", "560.wav", ",", "561.wav", ",", "562.wav", ",", "563.wav", ",", "564.wav", ",", "565.wav", ",", "566.wav", ",", "567.wav", ",", "568.wav", ",", "569.wav", ",", "57.wav", ",", "570.wav", ",", "571.wav", ",", "572.wav", ",", "573.wav", ",", "574.wav", ",", "575.wav", ",", "576.wav", ",", "577.wav", ",", "578.wav", ",", "579.wav", ",", "58.wav", ",", "580.wav", ",", "581.wav", ",", "582.wav", ",", "583.wav", ",", "584.wav", ",", "585.wav", ",", "586.wav", ",", "587.wav", ",", "588.wav", ",", "589.wav", ",", "59.wav", ",", "590.wav", ",", "591.wav", ",", "592.wav", ",", "593.wav", ",", "594.wav", ",", "595.wav", ",", "596.wav", ",", "597.wav", ",", "598.wav", ",", "599.wav", ",", "6.wav", ",", "60.wav", ",", "600.wav", ",", "61.wav", ",", "62.wav", ",", "63.wav", ",", "64.wav", ",", "65.wav", ",", "66.wav", ",", "67.wav", ",", "68.wav", ",", "69.wav", ",", "7.wav", ",", "70.wav", ",", "71.wav", ",", "72.wav", ",", "73.wav", ",", "74.wav", ",", "75.wav", ",", "76.wav", ",", "77.wav", ",", "78.wav", ",", "79.wav", ",", "8.wav", ",", "80.wav", ",", "81.wav", ",", "82.wav", ",", "83.wav", ",", "84.wav", ",", "85.wav", ",", "86.wav", ",", "87.wav", ",", "88.wav", ",", "89.wav", ",", "9.wav", ",", "90.wav", ",", "91.wav", ",", "92.wav", ",", "93.wav", ",", "94.wav", ",", "95.wav", ",", "96.wav", ",", "97.wav", ",", "98.wav", ",", "99.wav" ],
					"maxclass" : "umenu",
					"menumode" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 746.987979412078857, 271.518075227737427, 152.0, 41.0 ],
					"prefix" : "~/Documents/SPIRAL/Emo-Soundscapes/ES_Corpus/",
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 341.0, 116.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 224.0, 941.0, 47.0, 22.0 ],
					"text" : "dict.iter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 545.0, 95.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.60000091791153, 0.400011628866196, 0.200000643730164, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 330.0, 577.0, 149.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict RatingsGrab @quiet 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "int", "int" ],
					"patching_rect" : [ 947.0, 480.0, 50.5, 22.0 ],
					"text" : "t b b i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 957.5, 571.0, 151.0, 22.0 ],
					"text" : "sprintf symout %s/%ld.wav"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.12770003080368, 0.999774515628815, 0.999047517776489, 1.0 ],
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1042.0, 687.5, 48.0, 22.0 ],
					"text" : "pv num"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 320.481939554214478, 108.433738946914673, 40.0, 22.0 ],
					"text" : "t b i i"
				}

			}
, 			{
				"box" : 				{
					"bubble_outlinecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 81.5, 80.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 303.0, 210.0, 80.0, 39.0 ],
					"text" : "️▶ Play︎",
					"textcolor" : [ 0.131302490830421, 0.99969744682312, 0.023593783378601, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"fontface" : 1,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-64",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 40.0, 67.5, 155.0, 67.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 266.0, 196.0, 155.0, 67.0 ],
					"rounded" : 18.0,
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_lcd_bg"
						}

					}
,
					"text" : "",
					"texton" : "Next"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 957.5, 692.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 957.5, 745.783160090446472, 75.903617262840271, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.0, 148.0, 72.0, 39.0 ],
					"text" : "0.90"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 152.0, 32.0, 22.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 606.0, 200.000007390975952, 72.0, 39.0 ],
					"text" : "600"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 606.0, 166.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"fontface" : 1,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-37",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 577.0, 22.5, 155.0, 67.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 357.0, 25.0, 125.0, 67.0 ],
					"rounded" : 18.0,
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_lcd_bg"
						}

					}
,
					"text" : "Next",
					"texton" : "Next"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
					"fontface" : 1,
					"fontname" : "Avenir",
					"fontsize" : 24.0,
					"id" : "obj-36",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 471.5, 888.0, 155.0, 67.0 ],
					"rounded" : 18.0,
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_macro_title"
						}

					}
,
					"text" : "Submit",
					"texton" : "Submit"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-30",
					"knobshape" : 5,
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 957.5, 641.0, 271.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 120.0, 271.0, 29.0 ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 40.0, 192.0, 76.0, 22.0 ],
					"text" : "play~ Sound"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 397.247002243995667, 298.795191764831543, 80.0, 22.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 397.247002243995667, 327.0, 84.0, 22.0 ],
					"text" : "buffer~ Sound"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-108", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-108", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"order" : 1,
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 2,
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"order" : 0,
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"order" : 3,
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 1 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"order" : 1,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"order" : 0,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"order" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"order" : 1,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"order" : 2,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 2,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-45", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"source" : [ "obj-45", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-45", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-58", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-66", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-7", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"order" : 0,
					"source" : [ "obj-79", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"order" : 1,
					"source" : [ "obj-79", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"order" : 1,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 0,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-91", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 1 ],
					"order" : 1,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-96", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-96", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-97", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-97", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-13" : [ "gain[2]", "Gain", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-64", "obj-67" ]
			}
 ]
	}

}
