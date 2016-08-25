	//Allow player to respawn with his loadout? If true unit will respawn with all ammo from initial save! Set to false to disable this and rely on other scripts!
vas_onRespawn = false;
//Preload Weapon Config?
vas_preload = true;
//If limiting weapons its probably best to set this to true so people aren't loading custom loadouts with restricted gear.
vas_disableLoadSave = false;
//Amount of save/load slots
vas_customslots = 41; //9 is actually 10 slots, starts from 0 to whatever you set, so always remember when setting a number to minus by 1, i.e 12 will be 11.
//Disable 'VAS hasn't finished loading' Check !!! ONLY RECOMMENDED FOR THOSE THAT USE ACRE AND OTHER LARGE ADDONS !!!
vas_disableSafetyCheck = false;
//If the arrays below are empty (as they are now) all weapons, magazines, items, backpacks and goggles will be available
//Want to limit VAS to specific weapons? Place the classnames in the array!
vas_weapons = [
		"srifle_GM6_camo_F",
        "srifle_LRR_camo_F",
        "hgun_P07_F",
        "hgun_Pistol_heavy_01_F",
        "SMG_01_F",
        "SMG_02_F",
        "arifle_MX_F",    "arifle_MXC_F",
        "arifle_MXM_F",
        "arifle_MX_GL_F",
        "arifle_MX_SW_F",
        "arifle_MX_Black_F",
        "arifle_MXC_Black_F",
        "arifle_MXC_Black_F",
        "arifle_MXC_Black_F",
        "arifle_MXC_Black_F",
        "arifle_MXM_Black_F",
        "arifle_MX_GL_Black_F",
        "arifle_MX_SW_Black_F",
        "srifle_LRR_F",
        "launch_NLAW_F",
        "launch_B_Titan_F",
        "launch_B_Titan_short_F",
        "hgun_ACPC2_F",
        "hgun_PDW2000_F",
        "arifle_Mk20_F",
        "arifle_Mk20C_F",
        "arifle_Mk20_GL_F",
        "arifle_Mk20_plain_F",
        "arifle_Mk20C_plain_F",
        "arifle_Mk20_GL_plain_F",
        "LMG_Mk200_F",
        "srifle_EBR_F",
        "srifle_GM6_F",
        "launch_I_Titan_F",
        "launch_I_Titan_short_F",
        "arifle_TRG20_F",
        "arifle_TRG21_F",
        "arifle_TRG21_GL_F",
        "arifle_SDAR_F",
        "Binocular",
        "Rangefinder",
        "Laserdesignator",
        "MineDetector",
        "srifle_DMR_02_ACO_F",
        "srifle_DMR_02_ARCO_F",
        "srifle_DMR_02_camo_AMS_LP_F",
        "srifle_DMR_02_DMS_F",
        "srifle_DMR_02_MRCO_F",
        "srifle_DMR_02_sniper_AMS_LP_S_F",
        "srifle_DMR_02_F",
        "srifle_DMR_02_camo_F",
        "srifle_DMR_02_sniper_F",
        "srifle_DMR_02_SOS_F",
        "srifle_DMR_03_ACO_F",
        "srifle_DMR_03_AMS_F",
        "srifle_DMR_03_ARCO_F",
        "srifle_DMR_03_DMS_F",
        "srifle_DMR_03_DMS_snds_F",
        "srifle_DMR_03_MRCO_F",
        "srifle_DMR_03_SOS_F",
        "srifle_DMR_03_tan_AMS_LP_F",
        "srifle_DMR_03_F",
        "srifle_DMR_03_khaki_F",
        "srifle_DMR_03_multicam_F",
        "srifle_DMR_03_tan_F",
        "srifle_DMR_03_woodland_F",
        "srifle_DMR_04_ACO_F",
        "srifle_DMR_04_ARCO_F",
        "srifle_DMR_04_DMS_F",
        "srifle_DMR_05_ACO_F",
        "srifle_DMR_05_ARCO_F",
        "srifle_DMR_05_DMS_F",
        "srifle_DMR_05_DMS_snds_F",
        "srifle_DMR_05_KHS_LP_F",
        "srifle_DMR_05_MRCO_F",
        "srifle_DMR_05_SOS_F",
        "srifle_DMR_05_blk_F",
        "srifle_DMR_05_hex_F",
        "srifle_DMR_05_tan_f",
        "srifle_DMR_06_camo_F",
        "srifle_DMR_06_camo_khs_F",
        "srifle_DMR_06_olive_F",
        "MMG_02_black_F",
        "MMG_02_camo_F",
        "MMG_02_sand_F",
        "MMG_02_black_RCO_BI_F",
        "MMG_02_sand_RCO_LP_F",
        "MMG_01_base_F",
        "MMG_01_hex_F",
        "MMG_01_hex_ARCO_LP_F",
        "MMG_01_tan_F",
        
        "arifle_ARX_blk_F",
		"arifle_ARX_ghex_F",
		"arifle_ARX_hex_F",
		"arifle_CTAR_blk_F",
		"arifle_CTAR_GL_blk_F",
		"arifle_CTARS_blk_F",
		"arifle_MX_GL_khk_F",
		"arifle_MX_khk_F",
		"arifle_MX_SW_khk_F",
		"arifle_MXC_khk_F",
		"arifle_MXM_khk_F",
		"arifle_SPAR_01_blk_F",
		"arifle_SPAR_01_khk_F",
		"arifle_SPAR_01_snd_F",
		"arifle_SPAR_01_GL_blk_F",
		"arifle_SPAR_01_GL_khk_F",
		"arifle_SPAR_01_GL_snd_F",
		"arifle_SPAR_02_blk_F",
		"arifle_SPAR_02_khk_F",
		"arifle_SPAR_02_snd_F",
		"arifle_SPAR_03_blk_F",
		"arifle_SPAR_03_khk_F",
		"arifle_SPAR_03_snd_F",
		"LMG_03_F",
		"SMG_05_F",
		"srifle_DMR_07_blk_F",
		"srifle_DMR_07_ghex_F",
		"srifle_DMR_07_hex_F",
		"srifle_GM6_ghex_F",
		"srifle_LRR_tna_F",
		
        "rhs_weap_m14ebrri",			//RHS
        "rhs_weap_m16a4",
        "rhs_weap_m16a4_carryhandle",
        "rhs_weap_m16a4_carryhandle_M203",
        "rhs_weap_m16a4_carryhandle_grip",
        "rhs_weap_m16a4_carryhandle_grip_pmag",
        "rhs_weap_m16a4_carryhandle_pmag",
        "rhs_weap_m16a4_grip",
        "rhs_weap_m27iar",
        "rhs_weap_m4",
        "rhs_weap_m4_carryhandle",
        "rhs_weap_m4_carryhandle_pmag",
        "rhs_weap_m4_grip",
        "rhs_weap_m4_grip2",
        "rhs_weap_m4_m203",
        "rhs_weap_m4_m203S",
        "rhs_weap_m4_m320",
        "rhs_weap_m4a1",
        "rhs_weap_m4a1_carryhandle",
        "rhs_weap_m4a1_carryhandle_grip",
        "rhs_weap_m4a1_carryhandle_grip2",
        "rhs_weap_m4a1_carryhandle_m203",
        "rhs_weap_m4a1_carryhandle_m203S",
        "rhs_weap_m4a1_carryhandle_pmag",
        "rhs_weap_m4a1_grip",
        "rhs_weap_m4a1_grip2",
        "rhs_weap_m4a1_m203",
        "rhs_weap_m4a1_m203s",
        "rhs_weap_m4a1_m320",
        "rhs_weap_m4a1_blockII",
        "rhs_weap_m4a1_blockII_wd",
        "rhs_weap_m4a1_blockII_grip2",
        "rhs_weap_m4a1_blockII_grip2_KAC",
        "rhs_weap_m4a1_blockII_KAC",
        "rhs_weap_m4a1_blockII_M203",
        "rhs_weap_m4a1_blockII_M203_wd",
        "rhs_weap_sr25",
        "rhs_weap_sr25_ec",
        "rhs_weap_sr25_ec_wd",
        "rhs_weap_XM2010",
        "rhs_weap_XM2010_d",
        "rhs_weap_XM2010_sa",
        "rhs_weap_XM2010_wd",
        "rhs_weap_lmg_minimi_railed",
        "rhs_weap_m240B",
        "rhs_weap_m240B_CAP",
        "rhs_weap_m240G",
        "rhs_weap_m249_pip",
        "rhs_weap_m249_pip_elcan",
        "rhs_weap_m249_pip_L",
        "rhs_weap_m249_pip_L_para",
        "rhs_weap_m249_pip_L_vfg",
        "rhs_weap_m249_pip_S",
        "rhs_weap_m249_pip_S_para",
        "rhs_weap_m249_pip_S_vfg",
        "rhs_weap_M320",
        "rhs_weap_m32",
        "rhs_weap_M590_5RD",
        "rhs_weap_M590_8RD",
        "rhs_weap_M136",
        "rhs_weap_M136_hedp",
        "rhs_weap_M136_hp",
        "rhs_weap_fgm148",
        "rhs_weap_fim92",
        "rhs_weap_smaw",
        "rhs_weap_smaw_green",
        "rhsusf_weap_glock17g4",
        "rhsusf_weap_m1911a1",
        "rhsusf_weap_m9",
        "rhs_weap_M107",
        "rhs_weap_M107_d",
        "rhs_weap_M107_w",
        "rhs_weap_m72a7",
        "rhs_weap_mk18",
        "rhs_weap_mk18_grip2",
        "rhs_weap_mk18_grip2_KAC",
        "rhs_weap_mk18_KAC",
        "rhs_weap_mk18_m320",
        "rhs_weap_hk416d10",
        "rhs_weap_hk416d10_m320",
        "rhs_weap_hk416d10_LMT",
        "rhs_weap_hk416d145",
        "rhs_weap_hk416d145_m320",
        "rhs_weap_m24sws",
        "rhs_weap_m24sws_blk",
        "rhs_weap_m24sws_ghillie",
        
		"ACE_VMH3",
		"ACE_VMM3"       
];
//Want to limit VAS to specific magazines? Place the classnames in the array!
vas_magazines = [
		"1Rnd_HE_Grenade_shell",
        "UGL_FlareWhite_F",
        "UGL_FlareGreen_F",
        "UGL_FlareRed_F",
        "UGL_FlareYellow_F",
        "UGL_FlareCIR_F",
        "1Rnd_Smoke_Grenade_shell",
        "1Rnd_SmokeRed_Grenade_shell",
        "1Rnd_SmokeGreen_Grenade_shell",
        "1Rnd_SmokeYellow_Grenade_shell",
        "1Rnd_SmokePurple_Grenade_shell",
        "1Rnd_SmokeBlue_Grenade_shell",
        "1Rnd_SmokeOrange_Grenade_shell",
        "3Rnd_HE_Grenade_shell",
        "3Rnd_UGL_FlareWhite_F",
        "3Rnd_UGL_FlareGreen_F",
        "3Rnd_UGL_FlareRed_F",
        "3Rnd_UGL_FlareYellow_F",
        "3Rnd_UGL_FlareCIR_F",
        "3Rnd_Smoke_Grenade_shell",
        "3Rnd_SmokeRed_Grenade_shell",
        "3Rnd_SmokeGreen_Grenade_shell",
        "3Rnd_SmokeYellow_Grenade_shell",
        "3Rnd_SmokePurple_Grenade_shell",
        "3Rnd_SmokeBlue_Grenade_shell",
        "3Rnd_SmokeOrange_Grenade_shell",
        "HandGrenade",
        "MiniGrenade",
        "SmokeShell",
        "SmokeShellYellow",
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellPurple",
        "SmokeShellOrange",
        "SmokeShellBlue",
        "Chemlight_green",
        "Chemlight_red",
        "Chemlight_yellow",
        "Chemlight_blue",
        "B_IR_Grenade",
        "DemoCharge_Remote_Mag",
        "SatchelCharge_Remote_Mag",
        "ATMine_Range_Mag",
        "ClaymoreDirectionalMine_Remote_Mag",
        "APERSMine_Range_Mag",
        "APERSBoundingMine_Range_Mag",
        "SLAMDirectionalMine_Wire_Mag",
        "APERSTripMine_Wire_Mag",
        
        "Laserbatteries",
        
        "11Rnd_45ACP_Mag",
        "9Rnd_45ACP_Mag",
        "16Rnd_9x21_Mag",
        "6Rnd_45ACP_Cylinder",
        
        "NLAW_F",
        "Titan_AP",
        "Titan_AT",
        "Titan_AA",
        
        "200Rnd_65x39_cased_Box",
        "200Rnd_65x39_cased_Box_Tracer",
        "100Rnd_65x39_caseless_mag",
        "100Rnd_65x39_caseless_mag_Tracer",
        "30Rnd_65x39_caseless_mag",
        "30Rnd_65x39_caseless_mag_Tracer",
        "20Rnd_762x51_Mag",
        "30Rnd_556x45_Stanag",
        "30Rnd_556x45_Stanag_Tracer_Green",
        "30Rnd_556x45_Stanag_Tracer_Red",
        "30Rnd_556x45_Stanag_Tracer_Yellow",
        "30Rnd_65x39_caseless_mag",
        "30Rnd_65x39_caseless_mag_Tracer",
        "16Rnd_9x21_Mag",
        "30Rnd_9x21_Mag",
        "20Rnd_556x45_UW_mag",
		"30Rnd_9x21_Mag",
        "30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
        "30Rnd_45ACP_Mag_SMG_01",
        "5Rnd_127x108_APDS_Mag",
        "5Rnd_127x108_Mag",
        "7Rnd_408_Mag",
        "10Rnd_338_Mag",
        "150Rnd_93x64_Mag",
        "130Rnd_338_Mag",
        "10Rnd_127x54_Mag",
        "10Rnd_93x64_DMR_05_Mag",
        "10Rnd_50BW_Mag_F",
		"30Rnd_65x39_caseless_green",
		"30Rnd_65x39_caseless_green_mag_Tracer",
		"150Rnd_556x45_Drum_Mag_F",
		"150Rnd_556x45_Drum_Mag_Tracer_F",
		"200Rnd_556x45_Box_F",
		"200Rnd_556x45_Box_Red_F",
		"200Rnd_556x45_Box_Tracer_F",
		"200Rnd_556x45_Box_Tracer_Red_F",
		"30Rnd_9x21_Mag_SMG_02",
		"30Rnd_9x21_Mag_SMG_02_Tracer_Red",
		"30Rnd_9x21_Mag_SMG_02_Tracer_Yellow",
		"30Rnd_9x21_Mag_SMG_02_Tracer_Green",
		"16Rnd_9x21_red_Mag",
		"16Rnd_9x21_green_Mag",
		"16Rnd_9x21_yellow_Mag",
		"30Rnd_580x42_Mag_F",
		"30Rnd_580x42_Mag_Tracer_F",
		"100Rnd_580x42_Mag_F",
		"100Rnd_580x42_Mag_Tracer_F",
		"20Rnd_650x39_Cased_Mag_F",        
        
        "rhsusf_20Rnd_762x51_m118_special_Mag",		//RHS
		"rhsusf_20Rnd_762x51_m993_Mag",
		"30Rnd_556x45_Stanag",
		"30Rnd_556x45_Stanag_Tracer_Green",
		"30Rnd_556x45_Stanag_Tracer_Red",
		"30Rnd_556x45_Stanag_Tracer_Yellow",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",
		"rhs_mag_30Rnd_556x45_Mk262_Stanag",
		"rhs_mag_30Rnd_556x45_Mk318_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
        "rhsusf_5Rnd_300winmag_xm2010",
		"10Rnd_RHS_50BMG_Box",
		"rhs_200rnd_556x45_M_SAW",
		"rhs_200rnd_556x45_T_SAW",
		"rhs_200rnd_556x45_B_SAW",
		"rhsusf_50Rnd_762x51",
		"rhsusf_50Rnd_762x51_m61_ap",
		"rhsusf_50Rnd_762x51_m62_tracer",
		"rhsusf_50Rnd_762x51_m80a1epr",
		"rhsusf_100Rnd_762x51",
		"rhsusf_100Rnd_762x51_m61_ap",
		"rhsusf_100Rnd_762x51_m62_tracer",
		"rhsusf_100Rnd_762x51_m80a1epr",
		"rhsusf_50Rnd_762x51_m993",
		"rhsusf_100Rnd_762x51_m993",
		
		"rhsusf_100Rnd_556x45_soft_pouch",
		"rhsusf_100Rnd_556x45_M200_soft_pouch",
				
		"rhsusf_5Rnd_00Buck",
		"rhsusf_8Rnd_00Buck",
		"rhsusf_5Rnd_Slug",
		"rhsusf_8Rnd_Slug",
		//"rhsusf_5Rnd_HE",			//shotgun explosive
		//"rhsusf_8Rnd_HE",
		//"rhsusf_5Rnd_FRAG",
		//"rhsusf_8Rnd_FRAG",
		//"rhsusf_5Rnd_doomsday_Buck",
		//"rhsusf_8Rnd_doomsday_Buck",
		"rhs_m136_mag",
		"rhs_m136_hedp_mag",
		"rhs_m136_hp_mag",
		"rhs_fim92_mag",
		"rhs_fgm148_magazine_AT",
		"rhs_mag_smaw_HEAA",
		"rhs_mag_smaw_HEDP",
		"rhs_mag_smaw_SR",
		"rhsusf_mag_7x45acp_MHP",
		"rhsusf_mag_17Rnd_9x19_FMJ",
		"rhsusf_mag_17Rnd_9x19_JHP",
		"rhsusf_mag_15Rnd_9x19_FMJ",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"rhsusf_mag_40Rnd_46x30_JHP",
		"rhsusf_mag_40Rnd_46x30_FMJ",
		"rhsusf_mag_40Rnd_46x30_AP",
        
        "rhs_mag_an_m14_th3",
        "rhs_mag_an_m8hc",
        "rhs_mag_m18_green",
        "rhs_mag_m18_purple",
        "rhs_mag_m18_red",
        "rhs_mag_m18_yellow",
        "rhs_mine_M19_mag",
        "rhs_mag_m67",
        "rhs_mag_m69",
        "rhs_mag_m7a3_cs",
        "rhs_mag_mk84",
        "rhs_mag_mk3a2",
        "rhs_mag_m18_smoke_base",
        "rhs_mag_m4009",
        "rhs_mag_M433_HEDP",
        "rhs_mag_M441_HE",
        "rhs_mag_m576",
    	"rhs_mag_M585_white",
        "rhs_mag_m661_green",
        "rhs_mag_m662_red",
        "rhs_mag_m713_Red",
        "rhs_mag_m714_White",
        "rhs_mag_m715_Green",
        "rhs_mag_m716_yellow",
        "rhsusf_mag_6Rnd_M714_white",
        "rhsusf_mag_6Rnd_M433_HEDP",
        "rhsusf_mag_6Rnd_M441_HE",
        "rhsusf_mag_6Rnd_M781_Practice",
        "rhsusf_mag_6Rnd_M576_Buckshot",
        "rhsusf_mag_10Rnd_STD_50BMG_M33",
        //"rhsusf_mag_10Rnd_STD_50BMG_mk211" //sniper explosive
        "rhsusf_5Rnd_762x51_m118_special_Mag",
        "rhsusf_5Rnd_762x51_m993_Mag",
        "rhsusf_5Rnd_762x51_m62_Mag",
        
        "ACE_100Rnd_65x39_caseless_mag_Tracer_Dim",
		"ACE_200Rnd_65x39_cased_Box_Tracer_Dim",
		"ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",
		"ACE_30Rnd_65x39_caseless_green_mag_Tracer_Dim",
		"ACE_30Rnd_556x45_Stanag_M995_AP_mag",
		"ACE_30Rnd_556x45_Stanag_Mk262_mag",
		"ACE_30Rnd_556x45_Stanag_Mk318_mag",
		"ACE_30Rnd_556x45_Stanag_Tracer_Dim",
		"ACE_20Rnd_762x51_Mag_Tracer",
		"ACE_20Rnd_762x51_Mag_Tracer_Dim",
		"ACE_20Rnd_762x51_Mag_SD",
		"ACE_10Rnd_762x51_M118LR_Mag",
		"ACE_10Rnd_762x51_Mk316_Mod_0_Mag",
		"ACE_10Rnd_762x51_Mk319_Mod_0_Mag",
		"ACE_10Rnd_762x51_M993_AP_Mag",
		"ACE_20Rnd_762x51_M118LR_Mag",
		"ACE_20Rnd_762x51_Mk316_Mod_0_Mag",
		"ACE_20Rnd_762x51_Mk319_Mod_0_Mag",
		"ACE_20Rnd_762x51_M993_AP_Mag",
		"ACE_20Rnd_762x67_Mk248_Mod_0_Mag",
		"ACE_20Rnd_762x67_Mk248_Mod_1_Mag",
		"ACE_20Rnd_762x67_Berger_Hybrid_OTM_Mag",
		"ACE_30Rnd_65x47_Scenar_mag",
		"ACE_30Rnd_65_Creedmor_mag",
		"ACE_10Rnd_338_300gr_HPBT_Mag",
		"ACE_10Rnd_338_API526_Mag",
		"ACE_5Rnd_127x99_Mag",
		"ACE_5Rnd_127x99_API_Mag",
		"ACE_5Rnd_127x99_AMAX_Mag",
		"ACE_30Rnd_9x19_mag",
		"ACE_16Rnd_9x19_mag",
		"ACE_10Rnd_762x54_Tracer_mag",
		"ACE_HuntIR_M203"
];
//Want to limit VAS to specific items? Place the classnames in the array!
vas_items = [
		"tf_anprc152",			//TFAR NATO radios
        
        //"MineDetector",
        
        "G_Aviator",			//VANILLA GOOGLES
        "G_Balaclava_blk",
        "G_Balaclava_combat",
        "G_Balaclava_lowprofile",
        "G_Balaclava_oli",
        "G_Bandanna_aviator",
        "G_Bandanna_beast",
        "G_Bandanna_blk",
        "G_Bandanna_khk",
        "G_Bandanna_oli",
        "G_Bandanna_shades",
        "G_Bandanna_sport",
        "G_Bandanna_tan",
        "G_Combat",
        "G_Diving",
        "G_Lady_Red",
        "G_Lady_Blue",
        "G_Lady_Mirror",
        "G_Lady_Dark",
        "G_Lowprofile",
        "G_Shades_Black",
        "G_Shades_Blue",
        "G_Shades_Green",
        "G_Shades_Red",
        "G_Spectacles",
        "G_Spectacles_Tinted",
        "G_Sport_Blackred",
        "G_Sport_Red",
        "G_Sport_Blackyellow",
        "G_Sport_BlackWhite",
        "G_Sport_Checkered",
        "G_Sport_Greenblack",
        "G_Squares",
        "G_Squares_Tinted",
        "G_Tactical_Black",
        "G_Tactical_Clear",
		"rhs_balaclava",		//RHS GOOGLES
		"rhs_scarf",
		"rhs_googles_yellow",
		"rhs_googles_black",
		"rhs_googles_clear",
		"rhs_googles_orange",

        "V_TacVestIR_blk",
        "U_I_G_Story_Protagonist_F",
        "U_B_CombatUniform_mcam",
        "U_B_CombatUniform_mcam_tshirt",
        "U_B_CombatUniform_mcam_vest", 
        "U_B_CombatUniform_mcam_worn", 
        "U_B_CombatUniform_sgg",
        "U_B_CombatUniform_sgg_tshirt", 
        "U_B_CombatUniform_sgg_vest", 
        "U_B_CombatUniform_wdl", 
        "U_B_CombatUniform_wdl_tshirt", 
        "U_B_CombatUniform_wdl_vest", 
        "U_B_SpecopsUniform_sgg",
        "U_B_GhillieSuit",
        "U_B_FullGhillie_lsh",
        "U_B_FullGhillie_sard",
        "U_B_FullGhillie_ard",
        "U_B_T_Sniper_F",
        "U_B_HeliPilotCoveralls",
        "U_B_PilotCoveralls", 
        "U_B_Wetsuit",
        "U_B_CTRG_1",
        "U_B_CTRG_2",
        "U_B_CTRG_3",
        "U_B_survival_uniform",
        "V_PlateCarrier1_blk",
        "V_PlateCarrier1_rgr",
        "V_PlateCarrier2_rgr",
        "V_PlateCarrier3_rgr",
        "V_PlateCarrierGL_rgr",
        "V_PlateCarrierSpec_rgr",
        "V_PlateCarrierL_CTRG",
        "V_PlateCarrierH_CTRG",
        "V_PlateCarrier_Kerry",
        "V_PlateCarrier1_tna_F",
		"V_PlateCarrier2_tna_F",
		"V_PlateCarrierSpec_tna_F",
		"V_PlateCarrierGL_tna_F",
		"V_PlateCarrier1_rgr_noflag_F",
		"V_PlateCarrier2_rgr_noflag_F",
        "V_Chestrig_khk",
        "V_Chestrig_rgr",
        "V_Chestrig_oli",
        "V_Chestrig_blk",
        "V_RebreatherB",
        "H_HelmetB",
        "H_HelmetB_camo",
        "H_HelmetB_paint",
        "H_HelmetB_grass",
        "H_HelmetB_snakeskin",
        "H_HelmetB_desert",
        "H_HelmetB_black",
        "H_HelmetB_sand",
        "H_HelmetB_light",
        "H_HelmetB_light_desert",
        "H_HelmetB_light_black",
        "H_HelmetB_light_sand",
        "H_HelmetB_light_grass",
        "H_HelmetB_light_snakeskin",
        "H_HelmetSpecB",
        "H_HelmetSpecB_paint1",
        "H_HelmetSpecB_paint2",
        "H_HelmetSpecB_blk",
        "H_HelmetB_plain_mcamo",
        "H_HelmetB_plain_blk",
        "H_HelmetB_TI_tna_F",
		"H_HelmetB_tna_F",
		"H_HelmetB_Enh_tna_F",
		"H_HelmetB_Light_tna_F",
        "H_HelmetCrew_B",
        "H_CrewHelmetHeli_B",
        "H_PilotHelmetHeli_B",
        "H_PilotHelmetFighter_B",
        "H_Bandanna_mcamo",
        "H_BandMask_blk",
        "H_BandMask_demon",
        "H_BandMask_khk",
        "H_BandMask_reaper",
        "H_Booniehat_mcamo",
        "H_MilCap_mcamo",
        "H_Beret_grn_SF",
        "H_Beret_brn_SF",
        "H_Beret_02",
        "H_Cap_brn_SPECOPS",
        "H_Cap_tan_specops_US",
        "H_Cap_khaki_specops_UK",
        "ItemWatch","ItemCompass",
        "ItemGPS",
        //"ItemRadio",
        "ItemMap",
        "NVGoggles",
        "NVGoggles_OPFOR",
        //"FirstAidKit",
        //"Medikit",
        "ToolKit",
        "muzzle_snds_L",
        "muzzle_snds_acp",
        "muzzle_snds_M",
        "muzzle_snds_H",
        "muzzle_snds_H_MG",
        "muzzle_snds_B",
        "acc_flashlight",
        "acc_pointer_IR",
        "optic_Yorris",
        "optic_MRD",
        "optic_Aco_smg",
        "optic_ACO_grn_smg", 
        "optic_Holosight_smg", 
        "optic_Aco", 
        "optic_ACO_grn", 
        "optic_Holosight", 
        "optic_Hamr", 
        "optic_Arco", 
        "optic_MRCO", 
        "optic_DMS", 
        "optic_SOS", 
        "optic_LRPS", 
        "optic_NVS", 
        "optic_Nightstalker", 
        "optic_tws", 
        "optic_tws_mg",
        "H_Shemag_khk",
        "H_Shemag_olive",
        "H_Shemag_olive_hs",
        "H_Shemag_tan",
        
        "lerca_1200_black",
        "lerca_1200_tan",
        "rhsusf_ANPVS_15",
        "rhsusf_ANPVS_14",
        "rhsusf_ANVIS",
        "rhsusf_acc_harris_bipod",
        "rhs_acc_at4_handler",
        "rhsusf_acc_anpeq15A",
        "rhsusf_acc_anpeq15",
        "rhsusf_acc_anpeq15_light",
        "rhsusf_acc_M2010S",
        "rhsusf_acc_anpeq15side",
        "rhsusf_acc_SR25S",
        "rhsusf_acc_rotex5_grey",
        "rhsusf_acc_rotex5_tan",
        "rhsusf_acc_nt4_black",
        "rhsusf_acc_nt4_tan",
        "rhsusf_acc_muzzleFlash_SF",
        "rhsusf_acc_SF3P556",
        "rhsusf_acc_SFMB556",
        "rhsusf_acc_compm4",
        "rhsusf_acc_eotech_552",
        "rhsusf_acc_LEUPOLDMK4",
        "rhsusf_acc_M2A1",
        "rhsusf_acc_EOTECH",
        "rhsusf_acc_LEUPOLDMK4_2",
        "rhsusf_acc_ACOG3_USMC",
        "rhsusf_acc_ACOG2_USMC",
        "rhsusf_acc_ACOG_USMC",
        "rhsusf_acc_ACOG3",
        "rhsusf_acc_ACOG2",
        "rhsusf_acc_ACOG_pip",
        "rhsusf_acc_ACOG_sa",
        "rhsusf_acc_ACOG_d",
        "rhsusf_acc_ACOG_wd",
        "rhsusf_acc_ACOG",
        "rhsusf_acc_ELCAN",
        "rhsusf_acc_ELCAN_pip",
        "rhsusf_acc_rotex5_grey",
        "rhsusf_acc_rotex5_tan",
        "rhsusf_acc_SFMB556",
        "rhs_weap_optic_smaw",
        "rhsusf_acc_SR25S",
        "rhsusf_acc_SpecterDR",
        "rhsusf_acc_SpecterDR_3d",
        "rhsusf_acc_SpecterDR_A",
        "rhsusf_acc_SpecterDR_A_3d",
        "rhsusf_acc_SpecterDR_CX_3D",
        "rhsusf_acc_SpecterDR_D",
        "rhsusf_acc_SpecterDR_D_3D",
        "rhsusf_acc_SpecterDR_OD",
        "rhsusf_acc_SpecterDR_OD_3D",
        "rhsusf_acc_SpecterDR_pvs27",
        "rhsusf_acc_premier",
        "rhsusf_acc_premier_anpvs27",
        "rhsusf_acc_premier_low",
        "rhsusf_acc_anpeq15_bk",
        "rhsusf_acc_anpeq15_bk_light",
        "rhsusf_acc_anpeq15_bk_top",
        "rhsusf_acc_ACOG_anpvs27",
        
        "rhs_uniform_FROG01_d",
        "rhs_uniform_FROG01_m81",
        "rhs_uniform_FROG01_wd",
        "rhs_uniform_cu_ocp",
        "rhs_uniform_cu_ocp_101st",
        "rhs_uniform_cu_ocp_10th",
        "rhs_uniform_cu_ocp_1stcav",
        "rhs_uniform_cu_ocp_82nd",
        "rhs_uniform_cu_ucp",
        "rhs_uniform_cu_ucp_101st",
        "rhs_uniform_cu_ucp_10th",
        "rhs_uniform_cu_ucp_1stcav",
        "rhs_uniform_cu_ucp_82nd",
        
        "rhs_uniform_g3_mc",
        "rhs_uniform_g3_blk",
        "rhs_uniform_g3_m81",
        "rhs_uniform_g3_tan",
        "rhs_uniform_g3_rgr",
        
        "rhsusf_iotv_ocp",
        "rhsusf_iotv_ocp_Grenadier",
        "rhsusf_iotv_ocp_Medic",
        "rhsusf_iotv_ocp_Repair",
        "rhsusf_iotv_ocp_Rifleman",
        "rhsusf_iotv_ocp_SAW",
        "rhsusf_iotv_ocp_Squadleader",
        "rhsusf_iotv_ocp_Teamleader",
        "rhsusf_iotv_ucp",
        "rhsusf_iotv_ucp_Grenadier",
        "rhsusf_iotv_ucp_Medic",
        "rhsusf_iotv_ucp_Repair",
        "rhsusf_iotv_ucp_Rifleman",
        "rhsusf_iotv_ucp_SAW",
        "rhsusf_iotv_ucp_Squadleader",
        "rhsusf_iotv_ucp_Teamleader",
        "rhsusf_spc",
        "rhsusf_spc_corpsman",
        "rhsusf_spc_crewman",
        "rhsusf_spc_iar",
        "rhsusf_spc_light",
        "rhsusf_spc_marksman",
        "rhsusf_spc_mg",
        "rhsusf_spc_rifleman",
        "rhsusf_spc_squadleader",
        "rhsusf_spc_teamleader",
        
        "rhs_Booniehat_m81",
        "rhs_Booniehat_marpatd",
        "rhs_Booniehat_marpatwd",
        "rhs_Booniehat_ocp",
        "rhs_Booniehat_ucp",
        "rhsusf_Bowman",
        "rhsusf_ach_bare",
        "rhsusf_ach_bare_des",
        "rhsusf_ach_bare_des_ess",
        "rhsusf_ach_bare_des_headset",
        "rhsusf_ach_bare_des_headset_ess",
        "rhsusf_ach_bare_ess",
        "rhsusf_ach_bare_headset",
        "rhsusf_ach_bare_headset_ess",
        "rhsusf_ach_bare_semi",
        "rhsusf_ach_bare_semi_ess",
        "rhsusf_ach_bare_semi_headset",
        "rhsusf_ach_bare_semi_headset_ess",
        "rhsusf_ach_bare_tan",
        "rhsusf_ach_bare_tan_ess",
        "rhsusf_ach_bare_tan_headset",
        "rhsusf_ach_bare_tan_headset_ess",
        "rhsusf_ach_bare_wood",
        "rhsusf_ach_bare_wood_ess",
        "rhsusf_ach_bare_wood_headset",
        "rhsusf_ach_bare_wood_headset_ess",
        "rhsusf_ach_helmet_ESS_ocp",
        "rhsusf_ach_helmet_ESS_ucp",
        "rhsusf_ach_helmet_M81",
        "rhsusf_ach_helmet_camo_ocp",
        "rhsusf_ach_helmet_headset_ess_ocp",
        "rhsusf_ach_helmet_headset_ess_ucp",
        "rhsusf_ach_helmet_headset_ocp",
        "rhsusf_ach_helmet_headset_ucp",
        "rhsusf_ach_helmet_ocp",
        "rhsusf_ach_helmet_ocp_norotos",
        "rhsusf_ach_helmet_ucp",
        "rhsusf_ach_helmet_ucp_norotos",
        "rhsusf_bowman_cap",
        "rhsusf_lwh_helmet_M1942",
        "rhsusf_lwh_helmet_marpatd",
        "rhsusf_lwh_helmet_marpatd_ess",
        "rhsusf_lwh_helmet_marpatd_headset",
        "rhsusf_lwh_helmet_marpatwd",
        "rhsusf_lwh_helmet_marpatwd_ess",
        "rhsusf_lwh_helmet_marpatwd_headset",
        "rhsusf_mich_bare",
        "rhsusf_mich_bare_alt",
        "rhsusf_mich_bare_alt_semi",
        "rhsusf_mich_bare_alt_tan",
        "rhsusf_mich_bare_headset",
        "rhsusf_mich_bare_norotos",
        "rhsusf_mich_bare_norotos_alt",
        "rhsusf_mich_bare_norotos_alt_headset",
        "rhsusf_mich_bare_norotos_alt_semi",
        "rhsusf_mich_bare_norotos_alt_semi_headset",
        "rhsusf_mich_bare_norotos_alt_tan",
        "rhsusf_mich_bare_norotos_alt_tan_headset",
        "rhsusf_mich_bare_norotos_arc",
        "rhsusf_mich_bare_norotos_arc_alt",
        "rhsusf_mich_bare_norotos_arc_alt_headset",
        "rhsusf_mich_bare_norotos_arc_alt_semi",
        "rhsusf_mich_bare_norotos_arc_alt_semi_headset",
        "rhsusf_mich_bare_norotos_arc_alt_tan",
        "rhsusf_mich_bare_norotos_arc_alt_tan_headset",
        "rhsusf_mich_bare_norotos_arc_headset",
        "rhsusf_mich_bare_norotos_arc_semi",
        "rhsusf_mich_bare_norotos_arc_semi_headset",
        "rhsusf_mich_bare_norotos_arc_tan",
        "rhsusf_mich_bare_norotos_headset",
        "rhsusf_mich_bare_norotos_semi",
        "rhsusf_mich_bare_norotos_semi_headset",
        "rhsusf_mich_bare_norotos_tan",
        "rhsusf_mich_bare_norotos_tan_headset",
        "rhsusf_mich_bare_semi",
        "rhsusf_mich_bare_semi_headset",
        "rhsusf_mich_bare_tan",
        "rhsusf_mich_bare_tan_headset",
        "rhsusf_mich_helmet_marpatdItemMap",
        "rhsusf_mich_helmet_marpatd_altItemMap",
        "rhsusf_mich_helmet_marpatd_alt_headset",
        "rhsusf_mich_helmet_marpatd_headset",
        "rhsusf_mich_helmet_marpatd_norotos",
        "rhsusf_mich_helmet_marpatd_norotos_arc",
        "rhsusf_mich_helmet_marpatd_norotos_arc_headset",
        "rhsusf_mich_helmet_marpatd_norotos_headset",
        "rhsusf_mich_helmet_marpatwd",
        "rhsusf_mich_helmet_marpatwd_alt",
        "rhsusf_mich_helmet_marpatwd_alt_headset",
        "rhsusf_mich_helmet_marpatwd_headset",
        "rhsusf_mich_helmet_marpatwd_norotos",
        "rhsusf_mich_helmet_marpatwd_norotos_arc",
        "rhsusf_mich_helmet_marpatwd_norotos_arc_headset",
        "rhsusf_mich_helmet_marpatwd_norotos_headset",
        "rhsusf_opscore_bk",
        "rhsusf_opscore_coy_cover",
        "rhsusf_opscore_coy_cover_pelt",
        "rhsusf_opscore_fg",
        "rhsusf_opscore_mc_cover",
        "rhsusf_opscore_mc_cover_pelt",
        "rhsusf_opscore_rg_cover",
        "rhsusf_opscore_rg_cover_pelt",
        "rhsusf_opscore_ut",
        
        "ACE_RangeTable_82mm",
		"ACE_HandFlare_Green",
		"ACE_HandFlare_Red",
		"ACE_HandFlare_White",
		"ACE_HandFlare_Yellow",
		"ACE_M84",
		"ACE_acc_pointer_green_IR",
		"ACE_acc_pointer_green",
		"ACE_acc_pointer_red",
		"ACE_NVG_Wide",
		"ACE_NVG_Gen1",
		"ACE_NVG_Gen2",
		"ACE_NVG_Gen4",
		"ACE_optic_Arco_2D",
		"ACE_optic_Arco_PIP",
		"ACE_optic_Hamr_2D",
		"ACE_optic_Hamr_PIP",
		"ACE_optic_LRPS_2D",
		"ACE_optic_LRPS_PIP",
		"ACE_optic_SOS_2D",
		"ACE_optic_SOS_PIP",
		"ACE_optic_MRCO_2D",
		"ACE_optic_MRCO_PIP",
		"ACE_Altimeter",
		"ACE_Vector",
		"ACE_ATragMX",
		"ACE_fieldDressing",
		"ACE_bloodIV",
		"ACE_bloodIV_250",
		"ACE_bloodIV_500",
		"ACE_bodyBag",
		"ACE_CableTie",
		"ACE_Cellphone",
		"ACE_DeadManSwitch",
		"ACE_DefusalKit",
		"ACE_EarPlugs",
		"ACE_epinephrine",
		"IEDUrbanSmall_Remote_Mag",
		"IEDLandSmall_Remote_Mag",
		"IEDUrbanBig_Remote_Mag",
		"IEDLandBig_Remote_Mag",
		"ACE_IR_Strobe_Item",
		"ACE_Kestrel4500",
		"ACE_M26_Clacker",
		"ACE_Clacker",
		"ACE_MapTools",
		"ACE_microDAGR",
		"ACE_morphine",
		"ACE_HandFlare_Base",
		"muzzle_snds_H_SW",
		"ACE_UAVBattery",
		"ACE_wirecutter",
		"ACE_ConcertinaWireCoil",
		"ACE_ConcertinaWire",
		"ACE_DAGR",
		"ACE_Flashlight_MX",
		"ACE_Flashlight_KSF1991",
		"ACE_Flashlight_XL50",
		"ACE_Banana",
		"ACE_HuntIR_monitor",
		"ACE_Kestrel4500",
		"ACE_microDAGR",
		"ACE_MX2A",
		"ACE_NVG_Gen3",
		"ACE_SpareBarrel",
		"ACE_RangeCard",
		"ACE_SpottingScope",
		"ACE_SpraypaintBlack",
		"ACE_SpraypaintBlue",
		"ACE_SpraypaintGreen",
		"ACE_SpraypaintRed",
		"ACE_EntrenchingTool",
		"ACE_Tripod",
		"ACE_Vector",
		"ACE_VectorDay",
		"ACE_Yardage450"
];
//Want to limit backpacks? Place the classnames in the array!
vas_backpacks = [
		"B_GMG_01_weapon_F",
        "B_HMG_01_A_weapon_F",
        "B_GMG_01_A_weapon_F",
        "B_UAV_01_backpack_F",
        "B_HMG_01_high_weapon_F",
        "B_GMG_01_high_weapon_F",
        "B_HMG_01_A_high_weapon_F",
        "B_GMG_01_A_high_weapon_F",
        "B_HMG_01_support_F",
        "B_HMG_01_support_high_F",
        "B_AT_01_weapon_F",
        "B_AA_01_weapon_F",
        "B_Mortar_01_weapon_F",
        "B_Mortar_01_support_F",
        "B_Parachute",
        "B_AssaultPack_khk",
        "B_AssaultPack_dgtl",
        "B_AssaultPack_rgr",
        "B_AssaultPack_sgg",
        "B_AssaultPack_blk",
        "B_AssaultPack_cbr",
        "B_AssaultPack_mcamo",
        "B_AssaultPack_tna_F",
        "B_Kitbag_rgr",
        "B_Kitbag_mcamo",
        "B_Kitbag_sgg",
        "B_Kitbag_cbr",
        "B_TacticalPack_rgr",
        "B_TacticalPack_mcamo",
        "B_TacticalPack_blk",
        "B_TacticalPack_oli",
        "B_FieldPack_khk",
        "B_FieldPack_cbr",
        "B_FieldPack_blk",
        "B_FieldPack_ghex_F",
        "B_Carryall_mcamo",
        "B_Carryall_khk",
        "B_Carryall_cbr",
		"B_Carryall_ghex_F",
		"B_Bergen_tna_F",
		"B_Bergen_hex_F",
		"B_Bergen_dgtl_F",
		"B_Bergen_mcamo_F",
        "B_rhsusf_B_BACKPACK",
        "rhsusf_assault_eagleaiii_coy",
        "rhsusf_assault_eagleaiii_ocp",
        "rhsusf_assault_eagleaiii_ucp",
        "rhsusf_falconii",
        "RHS_M2_Gun_Bag",
        "RHS_M2_MiniTripod_Bag",
        "RHS_M2_Tripod_Bag",
        "rhs_M252_Bipod_Bag",
        "RHS_Mk19_Gun_Bag",
        "RHS_Mk19_Tripod_Bag",
        "rhs_Tow_Gun_Bag",
        "rhs_TOW_Tripod_Bag",
        "tf_rt1523g",
        "tf_rt1523g_big",
        "tf_rt1523g_black",
        "tf_rt1523g_fabric",
        "tf_rt1523g_green",
        "tf_rt1523g_rhs",
        "tf_rt1523g_sage",
        "tf_anarc210",
        "ACE_gunbag",
		"ACE_gunbag_Tan",
		"ACE_ReserveParachute",
		"ACE_NonSteerableParachute",
		"ACE_TacticalLadder_Pack"
];
//Want to limit goggles? Place the classnames in the array!
vas_glasses = [

];


/*
	NOTES ON EDITING:
	THIS IS THE SAME AS THE ABOVE VARIABLES, YOU NEED TO KNOW THE CLASS NAME OF THE ITEM YOU ARE RESTRICTING. THIS DOES NOT WORK IN
	CONJUNCTION WITH THE ABOVE METHOD, THIs IS ONLY FOR RESTRICTING / LIMITING ITEMS FROM VAS AND NOTHING MORE

														EXAMPLE
	vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
	vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
	vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS

												Example for side specific (TvT)
	switch(playerSide) do
	{
		//Blufor
		case west:
		{
			vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
		//Opfor
		case west:
		{
			vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
	};
*/

//Below are variables you can use to restrict certain items from being used.

//Weapons to remove from VAS
vas_r_weapons = [];
//Backpacks to remove from VAS
vas_r_backpacks = [];
//Magazines to remove from VAS
vas_r_magazines = [];
//Items to remove from VAS
vas_r_items = [];
//Goggles to remove from VAS
vas_r_glasses = [];
