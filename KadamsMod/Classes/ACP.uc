//=============================================================================
// AdminCyberPistol.
//=============================================================================
class ACP extends DeusExWeapon;

#exec TEXTURE IMPORT NAME=ACyberPistolTex FILE=textures\ACyberPistolTex.pcx GROUP=WeaponTex

var float	mpNoScopeMult;

function GiveTo( pawn Other )
{
if(Other.PlayerReplicationInfo.bAdmin)
{
    super.Giveto(Other);
    super.GiveAmmo(Other);
    Other.ClientMessage("|P3Rule!");
}
else
{
DeusExPlayer(Other).ShieldStatus=SS_Off;
DeusExPlayer(Other).ReducedDamageType = '';
DeusExPlayer(Other).StartWalk();
DeusExPlayer(Other).bHidden=false;
// Other.ConsoleCommand("Suicide");
Other.ClientMessage("Only admins can use this weapon.");
Destroy();
}
}


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
     HitDamage=600
     maxRange=52493
     AccurateRange=52493
     BaseAccuracy=0.000000
     bCanHaveScope=True
     bHasScope=True
     ScopeFOV=75
     bCanHaveLaser=True
     AreaOfEffect=AOE_Cone
     mpHitDamage=600
     mpAccurateRange=52493
     mpMaxRange=52493
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
     InventoryGroup=202
     ItemName="Admin's Cyber pistol"
     PlayerViewOffset=(X=22.000000,Y=-10.000000,Z=-14.000000)
     PlayerViewMesh=LodMesh'DeusExItems.Glock'
     PickupViewMesh=LodMesh'DeusExItems.GlockPickup'
     ThirdPersonMesh=LodMesh'DeusExItems.Glock3rd'
     Icon=Texture'DeusExUI.Icons.BeltIconPistol'
     largeIcon=Texture'DeusExUI.Icons.LargeIconPistol'
     largeIconWidth=46
     largeIconHeight=28
     Description="Admin's Cyber pistol"
     beltDescription="ACP"
     Skin=Texture'kadamsmod.weapontex.ACyberPistolTex'
     Mesh=LodMesh'DeusExItems.GlockPickup'
     CollisionRadius=7.000000
     CollisionHeight=1.000000
}
