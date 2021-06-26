//=============================================================================
// CyberPistol.
//=============================================================================
class CP extends DeusExWeapon;

#exec TEXTURE IMPORT NAME=CyberPistolTex FILE=textures\CyberPistolTex.pcx GROUP=WeaponTex

var float	mpNoScopeMult;

simulated function PreBeginPlay()
{
	Super.PreBeginPlay();

	// If this is a netgame, then override defaults
	if ( Level.NetMode != NM_StandAlone )
	{
		HitDamage = mpHitDamage;
		BaseAccuracy = mpBaseAccuracy;
		ReloadTime = mpReloadTime;
		AccurateRange = mpAccurateRange;
		MaxRange = mpMaxRange;
		ReloadCount = mpReloadCount;
	}
}

simulated function RefreshScopeDisplay(DeusExPlayer player, bool bInstant, bool bScopeOn)
{
  	if (bScopeOn && (Player !=None))
	{
		DeusExRootWindow(Player.RootWindow).ScopeView.ActivateView(ScopeFOV, False, bInstant);
		DeusExRootWindow(Player.RootWindow).HUD.AugDisplay.bVisionActive = True;
		DeusExRootWindow(Player.RootWindow).HUD.AugDisplay.VisionLevel = 3;
		DeusExRootWindow(Player.RootWindow).HUD.AugDisplay.VisionLevelValue = 3;
	}
 	else if (!bScopeOn)
	{
		DeusExRootWindow(Player.RootWindow).ScopeView.DeActivateView();
		DeusExRootWindow(Player.RootWindow).HUD.AugDisplay.bVisionActive = False;
 	}
}

defaultproperties
{
     GoverningSkill=Class'DeusEx.SkillWeaponPistol'
     EnviroEffective=ENVEFF_Air
     Concealability=CONC_Visual
     ShotTime=0.000000
     reloadTime=0.000000
     HitDamage=50
     maxRange=26246
     AccurateRange=26246
     BaseAccuracy=0.000000
     bCanHaveScope=True
     bHasScope=True
     ScopeFOV=75
     bCanHaveLaser=True
     mpHitDamage=50
     mpAccurateRange=26246
     mpMaxRange=26246
     mpReloadCount=50
     bCanHaveModBaseAccuracy=True
     bCanHaveModReloadCount=True
     bCanHaveModAccurateRange=True
     bCanHaveModReloadTime=True
     bCanHaveModRecoilStrength=True
     AmmoName=Class'kadamsmod.AmmoCP'
     ReloadCount=50
     PickupAmmoCount=550
     bInstantHit=True
     FireOffset=(X=-22.000000,Y=10.000000,Z=14.000000)
     shakemag=0.000000
     FireSound=Sound'DeusExSounds.Weapons.StealthPistolFire'
     CockingSound=Sound'DeusExSounds.Weapons.PistolReload'
     SelectSound=Sound'DeusExSounds.Weapons.PistolSelect'
     InventoryGroup=154
     ItemName="Cyber Pistol"
     PlayerViewOffset=(X=22.000000,Y=-10.000000,Z=-14.000000)
     PlayerViewMesh=LodMesh'DeusExItems.Glock'
     PickupViewMesh=LodMesh'DeusExItems.GlockPickup'
     ThirdPersonMesh=LodMesh'DeusExItems.Glock3rd'
     Icon=Texture'DeusExUI.Icons.BeltIconPistol'
     largeIcon=Texture'DeusExUI.Icons.LargeIconPistol'
     largeIconWidth=46
     largeIconHeight=28
     Description="Cyber pistol."
     beltDescription="CP"
     Mesh=LodMesh'DeusExItems.GlockPickup'
     Skin=Texture'kadamsmod.weapontex.Cyberpistoltex'
     CollisionRadius=7.000000
     CollisionHeight=1.000000
}
