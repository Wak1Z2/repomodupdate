## v0.4.5
- Try to fix bouncing problem with Big items
- Try to fix MissingFieldException

## v0.4.4
- Improved the object protection mechanic during the time it takes for them to reach the cart, preventing them from taking damage.

## v0.4.3
- Overall improvement of the mod for multiplayer (Only the host's configuration should be taken into account now)
- Protects Valuables during shrinking and expanding processes

## v0.4.2
- I've temporarily removed the unbreakable feature — I might reintroduce it later. I just need more information to make it work properly

## v0.4.1
- Fix the issue where objects often break when placed in the CART (sorry about that).

## v0.4.0
- MASSIVE refactor of the mod (YES! Again XD)
- Improved mod behavior in multiplayer
- Improved how an object behaves when moving from one cart to another
- Overall improvement of a bunch of stuff

## v0.3.0
- Big refactor of the mod
- Fixed a bug that prevented the Money Bag from shrinking (ups XD)
- Added a trigger system to reduce the number of lists used in the mod
- Integrated triggers into some configuration options to improve overall usability
- Made it possible to remove the "Infinite Battery" effect from items placed in a CART that originally had this option enabled

## v0.2.0
- Improved the shrink mechanism by basing it on the object's x, y, z dimensions
- Improved object resizing behavior when transferring from one CART to another

## v0.1.0
- 🚀 **Valuable safety options**:
  - Added `Valuable Safe Inside C.A.R.T`: prevent valuables from being destroyed while inside a cart.
  - Added `Valuable Stay Safe Outside C.A.R.T`: keep them unbreakable even after being removed.
- 🚀 **Battery life options**:
  - Added infinite battery for C.A.R.T weapons, melee, gun, and drone items.
- 🚀 **Enemy execution**:
  - Enemies inside a C.A.R.T can now be instantly killed (with proper orb drop).
- 🧠 **Code refactor**:
  - Smarter state tracking and cleanup for cart contents.
  - Centralized shrink logic with better handling of multiple carts.

## v0.0.10
- 🚀 Added a config option to adjust the mass of shrunk objects inside the cart

## v0.0.9
- 🐛 Fixed a bug preventing objects from being reduced when more than one CART exists in a scene

## v0.0.8
- 🚀 Added configurable shrink values for Enemy Valuable types: Tiny, Medium, and Big
- 🚀 Added a configuration option to keep shrink vualbes when they are removed from the CART

## v0.0.7
- 🚀 Added a configuration menu to customize mod settings and fine-tune your experience.

## v0.0.6
- 🐛 Fixed a bug preventing objects from returning to their original size after being removed from the cart.
- 🚀 Improved performance by shrinking only new or currently shrinking objects, instead of iterating over the entire cart content every frame.