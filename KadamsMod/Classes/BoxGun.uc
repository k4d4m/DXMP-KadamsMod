//=============================================================================
// Kadam's crate gun.
//=============================================================================
class boxgun extends WeaponLaw;

var byte mode;

function Fire(float Value)
{
	if (Owner != None)
	{
		if (mode==1)
		{
		Spawn(class'kadamsmod.cratesmall',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==2)
		{
		Spawn(class'kadamsmod.cratesmall2',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==3)
		{
		Spawn(class'kadamsmod.cratemed',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==4)
		{
		Spawn(class'kadamsmod.cratemed2',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==5)
		{
		Spawn(class'kadamsmod.cratelarge',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==6)
		{
		Spawn(class'kadamsmod.cratelarge2',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==7)
		{
		Spawn(class'kadamsmod.cratelarge4',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==8)
		{
		Spawn(class'kadamsmod.bigbangbox',,,Owner.Location + 64 * vector(Owner.Rotation));
		}

		if (mode==9)
		{
		Spawn(class'kadamsmod.ammocratev1',,,Owner.Location + 64 * vector(Owner.Rotation));
		}
	}
	if (DeusExPlayer(Owner) != None)
		DeusExPlayer(Owner).UpdateBeltText(Self);
}

function CycleAmmo()
{
	if (mode==1)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Small Box Double size");
	        return;
	}

	if (mode==2)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Medium Box");
	        return;
	}

	if (mode==3)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Medium Box Double size");
	        return;
	}

	if (mode==4)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Large Box ");
	        return;
	}

	if (mode==5)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Large Box Double size");
	        return;
	}

	if (mode==6)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Large Box fourth size");
	        return;
	}

	if (mode==7)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  BigBangBox");
	        return;
	}

	if (mode==8)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  AmmocrateV1");
	        return;
	}

	if (mode==9)
	{
		mode=1;
		Pawn(Owner).ClientMessage("Fire mode:  Small Box");
	        return;
	}
}


function ScopeToggle()
{	
	if (mode==1)
	{
		mode=9;
		Pawn(Owner).ClientMessage("Fire mode:  AmmocrateV1");
	        return;
	}
	
		if (mode==2)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Small Box");
	        return;
	}
	
			if (mode==3)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Small Box Double size");
	        return;
	}
	
			if (mode==4)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Medium Box");
	        return;
	}
	
			if (mode==5)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Medium Box Double size");
	        return;
	}
	
			if (mode==6)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Large Box");
	        return;
	}
	
			if (mode==7)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Large Box Double size");
	        return;
	}
	
			if (mode==8)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Large Box Fourth size");
	        return;
	}
	
				if (mode==9)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  BigBangBox");
	        return;
	}
}

defaultproperties
{
     Mode=1
     LowAmmoWaterMark=5
     GoverningSkill=Class'DeusEx.SkillWeaponPistol'
     NoiseLevel=0.001000
     EnviroEffective=ENVEFF_Air
     Concealability=CONC_Visual
     ShotTime=0.200000
     reloadTime=0.800000
     HitDamage=0
     maxRange=1312
     AccurateRange=1312
     BaseAccuracy=0.000000
     bCanHaveScope=True
     bHasScope=True
     ScopeFOV=25
     bCanHaveLaser=True
     mpReloadTime=2.000000
     mpHitDamage=20
     mpAccurateRange=1312
     mpMaxRange=1312
     mpReloadCount=100
     AmmoName=Class'DeusEx.Ammo10mm'
     ReloadCount=76
     PickupAmmoCount=1100
     bInstantHit=True
     FireOffset=(X=-22.000000,Y=10.000000,Z=14.000000)
     shakemag=0.000000
     FireSound=Sound'DeusExSounds.Weapons.LAWFire'
     SelectSound=Sound'DeusExSounds.Weapons.LAWSelect'
     InventoryGroup=31
     ItemName="BoxGuN"
     PlayerViewOffset=(X=11.000000,Y=-4.000000,Z=-13.000000)
     PlayerViewMesh=LodMesh'DeusExItems.LAW'
     PickupViewMesh=LodMesh'DeusExItems.LAWPickup'
     ThirdPersonMesh=LodMesh'DeusExItems.LAW3rd'
     Icon=Texture'DeusExUI.Icons.BeltIconLAW'
     largeIcon=Texture'DeusExUI.Icons.LargeIconLAW'
     largeIconWidth=45
     largeIconHeight=45
     Description="A boxgun rifle. Drops crates in front of player. Good for fortifications."
     beltDescription="BoXGuN"
     Mesh=LodMesh'DeusExItems.LAWPickup'
     CollisionRadius=25.000000
     CollisionHeight=6.800000
     Mass=50.000000
}
