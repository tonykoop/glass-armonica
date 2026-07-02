<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Glass Armonica Drawing Brief

No dimensioned drawings exist yet. This brief names the first drawings a
builder would need once bowl and drive testing produce measured evidence
(see design.md Measurement Gates).

Required first drawings (blocked on measurement):

- Bowl stack elevation showing graduated bowl envelope order (large/low to
  small/high) once real bowls are measured (design.md Bowl stack subsystem).
- Spindle + non-marring mount interface detail once a sacrificial coupon test
  clears a gasket/cone/collar strategy.
- Drive train layout: treadle, linkage, flywheel, and bearing supports from
  the bench drive-noise rig.
- Water tray and drip-path detail protecting bearings/belt from moisture.

## Authority Notes

- No design table (xlsx) or measured reference exists for this instrument.
  Every dimension referenced above is `pending_measurement` until a coupon
  test or reviewed reference sets it (design.md Authority Boundary).
- Do not produce a fabrication drawing before the bowl-candidate, mounting,
  drive-noise, and wetting tests in `validation.csv` are complete.
- `cad/glass-armonica.scad` (if present) is a non-dimensional spindle +
  graded bowl array bounding envelope only — it does not model bowl wall
  profile, rim geometry, or pitch mapping, and is not drawing authority.
