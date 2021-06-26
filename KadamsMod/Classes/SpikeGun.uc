//=============================================================================
// Needles!
//=============================================================================
class SpikeGun extends DeusExWeapon;

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
	}
}

defaultproperties
{
     LowAmmoWaterMark=25
     GoverningSkill=Class'DeusEx.SkillWeaponLowTech'
     NoiseLevel=0.200000
     EnemyEffective=ENMEFF_Organic
     EnviroEffective=ENVEFF_AirVacuum
     Concealability=CONC_Visual
     bAutomatic=True
     ShotTime=0.075000
     reloadTime=1.500000
     maxRange=13123
     AccurateRange=13123
     BaseAccuracy=0.000000
     AreaOfEffect=AOE_Sphere
     bPenetrating=False
     StunDuration=15.000000
     bHasMuzzleFlash=False
     mpReloadTime=2.000000
     mpAccurateRange=13123
     mpMaxRange=13123
     AmmoName=Class'kadamsmod.Spikes'
     ReloadCount=100
     PickupAmmoCount=1100
     FireOffset=(X=8.000000,Y=4.000000,Z=14.000000)
     ProjectileClass=Class'deusex.dart'
     shakemag=0.000000
     FireSound=Sound'DeusExSounds.Weapons.AssaultShotgunFire'
     AltFireSound=Sound'DeusExSounds.Weapons.AssaultShotgunReloadEnd'
     CockingSound=Sound'DeusExSounds.Weapons.AssaultShotgunReload'
     SelectSound=Sound'DeusExSounds.Weapons.AssaultShotgunSelect'
     InventoryGroup=173
     ItemName="Spike Gun"
     PlayerViewOffset=(X=16.000000,Y=-10.000000,Z=-16.000000)
     PlayerViewMesh=LodMesh'DeusExItems.AssaultShotgun'
     PickupViewMesh=LodMesh'DeusExItems.AssaultShotgunPickup'
     ThirdPersonMesh=LodMesh'DeusExItems.AssaultShotgun3rd'
     Icon=Texture'DeusExUI.Icons.BeltIconAssaultShotgun'
     largeIcon=Texture'DeusExUI.Icons.LargeIconAssaultShotgun'
     largeIconWidth=46
     largeIconHeight=40
     Description="The Spikegun shoots spikes."
     beltDescription="SPIKER"
     Mesh=LodMesh'DeusExItems.AssaultShotgunPickup'
     CollisionRadius=15.000000
     CollisionHeight=8.000000
     Mass=7.000000
     Buoyancy=2.000000
}
