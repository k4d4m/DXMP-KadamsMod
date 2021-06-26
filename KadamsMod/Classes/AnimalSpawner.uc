//=============================================================================
// Kadam's Animal gun.
//=============================================================================
class AnimalSpawner extends WeaponLaw;

var byte mode;

function Fire(float Value)
{
	if (Owner != None)
	{
	
			if (mode==1)
		{
		Spawn(class'greasel',,,Owner.Location + 64 * vector(Owner.Rotation));
		}
		
		
		if (mode==2)
		{
		Spawn(class'karkianbaby',,,Owner.Location + 64 * vector(Owner.Rotation));
		}
		
		if (mode==3)
		{
		Spawn(class'karkian',,,Owner.Location + 128 * vector(Owner.Rotation));
		}
		
		if (mode==4)
		{
		Spawn(class'gray',,,Owner.Location + 64 * vector(Owner.Rotation));
		}
		

		
		if (mode==5)
		{
		Spawn(class'rat',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==6)
		{
		Spawn(class'cat',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==7)
		{
		Spawn(class'mutt',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==8)
		{
		Spawn(class'doberman',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==9)
		{
		Spawn(class'pigeon',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==10)
		{
		Spawn(class'seagull',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==11)
		{
		Spawn(class'fly',,,Owner.Location + 64 * vector(Owner.Rotation));
		}


		if (mode==12)
		{
		Spawn(class'fish',,,Owner.Location + 64 * vector(Owner.Rotation));
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
		Pawn(Owner).ClientMessage("Fire mode:  Karkian baby");
	        return;
	}

	if (mode==2)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Karkian");
	        return;
	}

	if (mode==3)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Gray");
	        return;
	}

	if (mode==4)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  rat");
	        return;
	}

	if (mode==5)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Cat");
	        return;
	}

	if (mode==6)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Mutt");
	        return;
	}

	if (mode==7)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Doberman");
	        return;
	}

	if (mode==8)
	{
		mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Pigeon");
	        return;
	}

	if (mode==9)
	{
	mode++;
		Pawn(Owner).ClientMessage("Fire mode:  Seagull");
	        return;
	}
	
		if (mode==10)
	{
	mode++;
		Pawn(Owner).ClientMessage("Fire mode:  fly");
	        return;
	}
	
		if (mode==11)
	{
	mode++;
		Pawn(Owner).ClientMessage("Fire mode:  fish");
	        return;
	}
		if (mode==12)
	{
		mode=1;
		Pawn(Owner).ClientMessage("Fire mode:  Greasel");
	        return;
	}
}

function ScopeToggle()
{	
	if (mode==1)
	{
		mode=12;
		Pawn(Owner).ClientMessage("Fire mode:  Fish");
	        return;
	}
	
		if (mode==2)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Greasel");
	        return;
	}
	
			if (mode==3)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Karkian baby");
	        return;
	}
	
			if (mode==4)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Karkian");
	        return;
	}
	
			if (mode==5)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Gray");
	        return;
	}
	
			if (mode==6)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Rat");
	        return;
	}
	
			if (mode==7)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Cat");
	        return;
	}
	
			if (mode==8)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Mutt");
	        return;
	}
	
				if (mode==9)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Doberman");
	        return;
	}

		if (mode==9)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Pigeon");
	        return;
	}
	
					if (mode==10)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Seagull");
	        return;
	}
	
					if (mode==11)
	{
		mode--;
		Pawn(Owner).ClientMessage("Fire mode:  Fly");
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
     InventoryGroup=61
     ItemName="AnimalSpawner"
     PlayerViewOffset=(X=11.000000,Y=-4.000000,Z=-13.000000)
     PlayerViewMesh=LodMesh'DeusExItems.LAW'
     PickupViewMesh=LodMesh'DeusExItems.LAWPickup'
     ThirdPersonMesh=LodMesh'DeusExItems.LAW3rd'
     Icon=Texture'DeusExUI.Icons.BeltIconLAW'
     largeIcon=Texture'DeusExUI.Icons.LargeIconLAW'
     largeIconWidth=45
     largeIconHeight=45
     Description="An animal spawner rifle."
     beltDescription="Animalz"
     Mesh=LodMesh'DeusExItems.LAWPickup'
     CollisionRadius=25.000000
     CollisionHeight=6.800000
     Mass=50.000000
}
