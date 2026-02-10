# Changelog
All notable changes to **Medic!** will be documented in this file.

## [1.1.4] - 2025-09-08
### Changed
- **Event-driven avatar cache:** Player avatars now register on spawn/despawn so revive lookups use cached references instead of repeatedly scanning the scene. _(Performance boost: removes per-frame scene scans during revive attempts.)_
- **Unified health sync handler:** Consolidated revivee/reviver health logic into a shared handler while continuing to emit the legacy `SyncRevivedHealth`/`SyncReviverHealth` RPC names for backwards compatibility. _(Reliability gain: keeps every client on the same health state without duplicate code paths.)_
- **Per-entry health TTL:** Cached health values track their own timestamps, ensuring simultaneous revive checks don't reuse stale data from other avatars.
### Fixed
- **Fallback scanning guard:** Only perform `FindObjectsOfType<PlayerAvatar>` when the cache misses or becomes invalid, preventing redundant allocations during revive attempts. _(Stability fix: avoids GC spikes that could delay revives.)_
- **Instant health cache updates:** Refresh the avatar's cached HP immediately after `SetHealth` runs so rapid follow-up revives respect the new value and correctly trigger denial feedback when HP is too low.
- **Cross-version revive sync:** Restored compatibility with older mod releases by keeping the legacy RPC names so pre-1.1.4 clients don't log missing `SyncHealth` errors during mixed-version revives.

---

## [1.1.3] - 2025-09-07
### Added
- **Failed revive chat messages:** Attempting to revive without the required HP now posts a clear chat notification so everyone knows why the revive didn’t fire.
- **Performance optimization:** Smoothed the revive key handler to eliminate frame drops when rapidly mashing H.
- **Personalized messages:** Failed revive notifications include the downed player's name for easier identification.
- **Smart cooldown system:** Chat and denial sounds share per-player cooldowns to stop spam.
### Fixed
- **FPS drops on low-HP revives:** Rapidly pressing H no longer tanks the frame rate when you're below the health cost.
- **Audio spam:** Denial sounds respect the new cooldown, preventing rapid-fire audio.
- **Failed revive chat spam:** Guarded against multiple chat lines when a revive attempt is rejected.
### Changed
- **Single AudioSource:** Centralized denial audio through one `AudioSource` instance to reduce overhead.
- **Cached lookups:** Avatar references and current health values are cached for faster access.
- **Configurable cooldowns and messages:** Exposed new options to tune cooldown durations and customize denial text.

---

## [1.1.2] - 2025-09-03
### Fixed
- **Deny sound origin:** Now emits from the **reviver’s position** instead of a global/menu location, preventing distant/quiet audio near the cart or extraction point.
### Improved
- **Revive chat timing:** Added a **one-frame delay** before posting the revive chat on the revivee’s client to improve reliability in mixed/laggy lobbies.

---

## [1.1.1] - 2025-09-02
### Added
- **Audible warning on revive denial:** Plays when the reviver lacks sufficient health (config: `Sound/DeniedSoundVolume`).
### Removed
- **Non-startup logging:** Only the activation message remains during initialization.

---

## [1.1.0] - 2025-09-01
### Added
- **Randomized gratitude chat:** Revived players now post a **random phrase** chosen from `gratitude_phrases.txt`.
- **Chat toggle:** `Chat/EnableGratitude` boolean to enable/disable the gratitude chat line.
- **Hot reload:** Press **Ctrl+P** to reload phrases at runtime.
- **Config options:**
  - `Chat/PhrasesFile` — file name to load phrases from (plugin folder → BepInEx/config).
  - `Chat/FallbackPhrases` — pipe-separated fallback list used if the file is missing/empty.
- **Content:** Includes **8 default phrases** out of the box in `gratitude_phrases.txt`.
### Improved
- **Phrase length guard:** Phrases longer than **160** characters are trimmed during load to avoid chat overflow.
### Compatibility
- No breaking changes. Mixed lobby behavior unchanged.

---

## [1.0.2] - 2025-08-31
### Fixed
- **Reviver HP sync:** When a client revives the host, the client now correctly loses the configured HP (e.g., 20), while the host respawns at the configured amount. Added `SyncReviverHealth` RPC mirroring `SyncRevivedHealth` so the reviver’s owner applies the HP cost locally.
### Compatibility
- No config or save changes. Mixed-mod lobbies still supported.

---

## [1.0.1] - 2025-08-31
### Removed
- Development **heartbeat logger** that printed every 5 seconds.  
  *No gameplay or network behavior changes; purely removes debug noise from logs.*
### Compatibility
- No breaking changes. Config and save data unaffected.

---

## [1.0.0] - 2025-08-31
### Added
- **Pick-up revive:** Hold a teammate’s `PlayerDeathHead` and press **H** to revive (cost: 20 HP by default).
- **Revivee gratitude message:** The revived player automatically shows gratitude via in-game chat.
- **Mixed lobby support:** Unmodded players can be revived; chat/gratitude requires the revivee to run the mod.
- **Config:** `HealthTransferAmount` (default 20).

