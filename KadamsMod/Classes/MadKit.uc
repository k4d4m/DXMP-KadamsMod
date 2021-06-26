//=============================================================================
// Cigarettes.
//=============================================================================
class madkit extends DeusExPickup;

state Activated
{
	function Activate()
	{
		// can't turn it off
	}

	function BeginState()
	{
		local Pawn P;
		local vector loc;
		local rotator rot;
		local SmokeTrail puff;
		
		Super.BeginState();

		P = Pawn(Owner);
		if (P != None)
		{
			P.TakeDamage(5, P, P.Location, vect(0,0,0), 'PoisonGas');
			loc = Owner.Location;
			rot = Owner.Rotation;
			loc += 2.0 * Owner.CollisionRadius * vector(P.ViewRotation);
			loc.Z += Owner.CollisionHeight * 0.9;
			puff = Spawn(class'SmokeTrail', Owner,, loc, rot);
			if (puff != None)
			{
				puff.DrawScale = 1.0;
				puff.origScale = puff.DrawScale;
			}
			PlaySound(sound'MaleCough');
		}

		UseOnce();
	}
Begin:
}

defaultproperties
{
     maxCopies=20
     bCanHaveMultipleCopies=True
     bActivatable=True
     ItemName="Madkit"
     PlayerViewOffset=(X=30.000000,Z=-12.000000)
     PlayerViewMesh=LodMesh'DeusExItems.MedKit'
     PickupViewMesh=LodMesh'DeusExItems.MedKit'
     ThirdPersonMesh=LodMesh'DeusExItems.MedKit3rd'
     LandSound=Sound'DeusExSounds.Generic.PlasticHit2'
     Icon=Texture'DeusExUI.Icons.BeltIconMedKit'
     largeIcon=Texture'DeusExUI.Icons.LargeIconMedKit'
     largeIconWidth=39
     largeIconHeight=46
     Description="'COUGHING NAILS -- when you've just got to have a cigarette.'"
     beltDescription="KILLKIT"
     Mesh=LodMesh'DeusExItems.MedKit'
     CollisionRadius=7.500000
     CollisionHeight=1.000000
     Mass=2.000000
     Buoyancy=3.000000
}
