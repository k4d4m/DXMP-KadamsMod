//=============================================================================
// Ammocratev2
//=============================================================================
class AmmoCratev2 extends Containers;

var localized String AmmoReceived;

// ----------------------------------------------------------------------
// Frob()
//
// If we are frobbed, trigger our event
// ----------------------------------------------------------------------
function Frob(Actor Frobber, Inventory frobWith)
{
	local Actor A;
	local Pawn P;
	local DeusExPlayer Player;
   local Inventory CurInventory;

   //Don't call superclass frob.

   P = Pawn(Frobber);
	Player = DeusExPlayer(Frobber);

   if (Player != None)
   {
      CurInventory = Player.Inventory;
      while (CurInventory != None)
      {
         if (CurInventory.IsA('DeusExWeapon'))
            RestockWeapon(Player,DeusExWeapon(CurInventory));
         CurInventory = CurInventory.Inventory;
      }
      Player.ClientMessage(AmmoReceived);
		PlaySound(sound'WeaponPickup', SLOT_None, 0.5+FRand()*0.25, , 256, 0.95+FRand()*0.1);
   }
}

function RestockWeapon(DeusExPlayer Player, DeusExWeapon WeaponToStock)
{
   local Ammo AmmoType;
   if (WeaponToStock.AmmoType != None)
   {
      if (WeaponToStock.AmmoNames[0] == None)
         AmmoType = Ammo(Player.FindInventoryType(WeaponToStock.AmmoName));
      else
         AmmoType = Ammo(Player.FindInventoryType(WeaponToStock.AmmoNames[0]));
      
      if ((AmmoType != None) && (AmmoType.AmmoAmount < AmmoType.MaxAmmo))
      {
         AmmoType.AddAmmo(AmmoType.MaxAmmo - AmmoType.AmmoAmount);
      }
   }   
}

defaultproperties
{
     AmmoReceived="Ammo restocked"
     HitPoints=25000
     ItemName="AmmoCrateV2"
     bPushable=False
     bBlockSight=True
     Mesh=LodMesh'DeusExItems.DXMPAmmobox'
     bAlwaysRelevant=True
     CollisionRadius=22.500000
     CollisionHeight=16.000000
     Mass=50.000000
     Buoyancy=40.000000
}
