.include "macros.inc"

.section .ctors, "wa"  # 0x803CB1C0 - 0x803CB380
.global __init_cpp_exceptions_reference
__init_cpp_exceptions_reference:
	# ROM: 0x3C81C0
	.4byte __init_cpp_exceptions
	.4byte __sinit_CControlMapper_cpp
	.4byte __sinit_CPlayer_cpp
	.4byte __sinit_CAxisAngle_cpp
	.4byte __sinit_CEulerAngles_cpp
	.4byte __sinit_CFrontEndUI_cpp
	.4byte __sinit_CMFGame_cpp
	.4byte __sinit_CAnimData_cpp
	.4byte __sinit_CPlayerGun_cpp
	.4byte __sinit_CEntity_cpp
	.4byte __sinit_CWorld_cpp
	.4byte __sinit_CSamusHud_cpp
	.4byte __sinit_CPatterned_cpp
	.4byte __sinit_CMapArea_cpp
	.4byte __sinit_CBallCamera_cpp
	.4byte __sinit_CAi_cpp
	.4byte __sinit_CTargetReticles_cpp
	.4byte __sinit_CSamusDoll_cpp
	.4byte __sinit_CPlasmaBeam_cpp
	.4byte __sinit_CWaveBeam_cpp
	.4byte __sinit_CMappableObject_cpp
	.4byte __sinit_CPlayerCameraBob_cpp
	.4byte __sinit_CCameraFilter_cpp
	.4byte __sinit_CMorphBall_cpp
	.4byte __sinit_CDamageVulnerability_cpp
	.4byte __sinit_CModelData_cpp
	.4byte __sinit_CDecalManager_cpp
	.4byte __sinit_TGameTypes_cpp
	.4byte __sinit_CSpacePirate_cpp
	.4byte __sinit_CPathCamera_cpp
	.4byte __sinit_CBSFlyerLocomotion_cpp
	.4byte __sinit_CChozoGhost_cpp
	.4byte __sinit_CFireFlea_cpp
	.4byte __sinit_CPuddleToadGamma_cpp
	.4byte __sinit_CPowerBomb_cpp
	.4byte __sinit_CParasite_cpp
	.4byte __sinit_CSamusFaceReflection_cpp
	.4byte __sinit_CCameraShakeData_cpp
	.4byte __sinit_CMetroid_cpp
	.4byte __sinit_CPlasmaProjectile_cpp
	.4byte __sinit_CPlayerOrbit_cpp
	.4byte __sinit_CFlameThrower_cpp
	.4byte __sinit_CScriptRoomAcoustics_cpp
	.4byte __sinit_CIceSheegoth_cpp
	.4byte __sinit_CCollisionActor_cpp
	.4byte __sinit_CFlaahgra_cpp
	.4byte __sinit_CWaveBuster_cpp
	.4byte __sinit_CMetroidBeta_cpp
	.4byte __sinit_CThardus_cpp
	.4byte __sinit_CFlyingPirate_cpp
	.4byte __sinit_CEnergyProjectile_cpp
	.4byte __sinit_CScriptGunTurret_cpp
	.4byte __sinit_CBabygoth_cpp
	.4byte __sinit_CScriptCameraPitchVolume_cpp
	.4byte __sinit_RumbleFxTable_cpp
	.4byte __sinit_CElitePirate_cpp
	.4byte __sinit_CGrenadeLauncher_cpp
	.4byte __sinit_CScriptLayerManager_cpp
	.4byte __sinit_CMagdolite_cpp
	.4byte __sinit_CScriptSpindleCamera_cpp
	.4byte __sinit_CRidley_cpp
	.4byte __sinit_CTryclops_cpp
	.4byte __sinit_CNewFlameThrower_cpp
	.4byte __sinit_CBurrower_cpp
	.4byte __sinit_CMetroidPrimeExo_cpp
	.4byte __sinit_CMetroidPrimeEssence_cpp
	.4byte sub_802886f0
	.4byte __sinit_CSlideShow_cpp
	.4byte __sinit_CArtifactDoll_cpp
	.4byte __sinit_CWorldLight_cpp
	.4byte __sinit_IWeaponRenderer_cpp
	.4byte __sinit_CDecal_cpp
	.4byte __sinit_CCubeRenderer_cpp
	.4byte __sinit_CGuiFeeHelper_cpp
	.4byte __sinit_CGuiWidgetDrawParms_cpp
	.4byte __sinit_CCollidableAABox_cpp
	.4byte __sinit_CCollisionPrimitive_cpp
	.4byte __sinit_CollisionUtil_cpp
	.4byte __sinit_CCollidableSphere_cpp
	.4byte __sinit_CMaterialFilter_cpp
	.4byte __sinit_CStopwatch_cpp
	.4byte __sinit_CSfxManager_cpp
	.4byte __sinit_CLight_cpp
	.4byte __sinit_CGX_cpp
	.4byte __sinit_CTevCombiners_cpp
	.4byte __sinit_DolphinCGraphics_cpp
	.4byte __sinit_CloseEnough_cpp
	.4byte __sinit_CMatrix3f_cpp
	.4byte __sinit_CMatrix4f_cpp
	.4byte __sinit_CQuaternion_cpp
	.4byte __sinit_CTransform4f_cpp
	.4byte __sinit_CVector2f_cpp
	.4byte __sinit_CVector3f_cpp
	.4byte __sinit_CMemory_cpp
	.4byte __sinit_CElementGen_cpp
	.4byte __sinit_CAABox_cpp
	.4byte __sinit_rstl_strings_cpp
	.4byte __sinit_RstlExtras_cpp
	.4byte __sinit_IObj_cpp
	.4byte __sinit_CARAMManager_cpp
	.4byte __sinit_CCubeMaterial_cpp
	.4byte __sinit_CCubeSurface_cpp
	.4byte __sinit_CColor_cpp
	.4byte __sinit_DolphinCAudioSys_cpp
	.4byte __sinit_DolphinCMemoryCardSys_cpp
	.4byte __sinit_DolphinCSkinnedModel_cpp
	.4byte __sinit_CMidiManager_cpp
	.4byte __sinit_CDSPStreamManager_cpp
	.4byte __sinit_CStreamAudioManager_cpp
	.4byte __sinit_CStaticAudioPlayer_cpp
	.4byte __sinit_GameTweaks_cpp
	.4byte 0
