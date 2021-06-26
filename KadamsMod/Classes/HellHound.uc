//=============================================================================
// HellHound
//=============================================================================
class HellHound extends Dog;

#exec TEXTURE IMPORT NAME=HellHoundTex FILE=textures\HellHoundTex.pcx GROUP=AnimalTex

function PlayDogBark()
{
	if (FRand() < 0.5)
		PlaySound(sound'DogLargeBark2', SLOT_None);
	else
		PlaySound(sound'DogLargeBark3', SLOT_None);
}

defaultproperties
{
     CarcassType=Class'HellHound.HellHoundCarcass'
     WalkingSpeed=0.200000
     GroundSpeed=250.000000
     WaterSpeed=50.000000
     AirSpeed=144.000000
     AccelRate=500.000000
     Health=5000
     UnderWaterTime=20.000000
     AttitudeToPlayer=ATTITUDE_Ignore
     HitSound1=Sound'DeusExSounds.Animal.DogLargeGrowl'
     HitSound2=Sound'DeusExSounds.Animal.DogLargeBark1'
     Die=Sound'DeusExSounds.Animal.DogLargeDie'
     DrawType=DT_Mesh
     Drawscale=4
     Mesh=LodMesh'DeusExCharacters.Doberman'
     CollisionRadius=120.000000
     CollisionHeight=112.000000
     skin=Texture'HellHound.AnimalTex.HellHoundTex'
     Mass=25.000000
     BindName="HellHound"
     FamiliarName="HellHound"
     UnfamiliarName="HellHound"
}
