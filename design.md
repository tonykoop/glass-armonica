<!-- SPDX-License-Identifier: CC-BY-4.0 -->
---
instrument: Glass Armonica
family: idiophone_friction_glass
packet_mode: v5_l1_concept
authority: concept_only
readiness: L1 concept packet
---

# Glass Armonica Design Study

## Design Thesis

This study captures a Franklin-style glass armonica as a low-stakes V5 L1
instrument packet. The instrument uses a stack of graduated glass bowls on a
single horizontal spindle. A treadle-driven flywheel rotates the spindle, and
the player sounds the wetted rims with fingers instead of striking or bowing.

The packet intentionally stops before fabricated geometry. The useful work here
is to name the mechanism, the measurements that must be collected, and the
authority boundary for future CAD or shop work.

## Mechanism

The central assembly is a horizontal shaft carrying nested glass bowls from
large/low to small/high. Each bowl needs a non-marring support interface,
positive axial registration, and clearance from neighboring bowls so a vibrating
rim can speak without rubbing.

The drive train is treadle first: a foot pedal moves a linkage or belt that
turns a flywheel, which smooths the motion before it reaches the spindle. The
drive must be quiet enough not to mask the glass tone and gentle enough to avoid
shock loads into the bowl stack.

The playing interface is wetted-finger friction. Water management is part of the
instrument, not an accessory: the concept needs a tray, wipe area, drip path, and
guarding plan so moisture stays away from bearings, belts, and finished wood.

## Parametric Intent

The future design table should separate measured values from design choices:

- `bowl_id`
- `measured_bowl_outer_diameter`
- `measured_rim_profile`
- `measured_wall_thickness_profile`
- `measured_bowl_mass`
- `measured_free_pitch`
- `measured_mounted_pitch`
- `spindle_interface_status`
- `nesting_clearance_status`
- `wetting_response_status`
- `guarding_status`

All values above are currently `pending_measurement`. This packet does not infer
them from historical examples, photos, or prose.

## Authority Boundary

- Concept authority: this repository's README, design notes, decision record,
  and estimated BOM.
- Measurement authority: none yet.
- CAD/DXF authority: none yet.
- Tuning authority: none yet.

No future rendering, concept sketch, or image prompt should be treated as a
source for bowl spacing, spindle diameter, drive ratio, rim profile, pitch, or
toolpaths.

## Measurement Gates

Promotion beyond L1 requires:

- A real bowl candidate measured for geometry, mass, and free response.
- A non-destructive mounting test that does not chip, pinch, or overload the
  glass.
- A quiet bearing and drive mockup that can rotate smoothly under treadle power.
- A wetting test that confirms tone onset, water control, and player ergonomics.
- A safety review for rotating glass, pinch points, belt paths, and cleanup.

## Risks

- Glass fracture from clamping, thermal stress, impact, or spindle misalignment.
- Treadle vibration coupling into the bowl stack.
- Water intrusion into bearings, belts, wood, or electrical accessories.
- Bowl-to-bowl contact if nesting clearance is not measured under rotation.
- Overconfident pitch claims before real bowls are measured in mounted and
  unmounted states.
