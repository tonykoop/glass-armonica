# Design Intent — glass-armonica rev A

- Master CAD: `cad/glass-armonica.scad` (sha256: 8b73dc43f323cbfd44811596fdb4333f956caa8b959f2a2c8295340d052fc416) — a non-dimensional spindle + graded bowl array bounding envelope. No design table (xlsx) exists for this instrument; `design.md` and `decision-record.md` are the governing sources.
- Function: Franklin-style glass friction idiophone. Graduated glass bowls are nested coaxially on a horizontal spindle rotated by a foot treadle/flywheel; the player wets fingers and touches rotating bowl rims to excite friction-driven vibration (design.md Core Mechanism). Pitch is governed by bowl geometry but no pitch table is claimed.
- Environment: pedal-driven rotating glass with a wetting station; moisture must stay isolated from bearings/belts (risks.md).
- Target qty: 1 (prototype bench rig). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Bowl array count / diameter range | 10 bowls, 9→3 in (assumption) | none — bench-planning only | shop-space blocking | cad/glass-armonica.scad header (assumption, not a design-table value) |
| Bowl wall profile / rim geometry | TBD | measurement_required | pitch, tone onset | design.md bowl stack subsystem, cut-list.csv GA-CUT-BOWL-SET |
| Nesting clearance (axial spacing) | TBD | measurement_required | bowl-to-bowl contact risk | design.md nesting_clearance_status |
| Spindle diameter / bearing layout | TBD | measurement_required | rotation quality, drive noise | design.md spindle and mounts subsystem, cut-list.csv GA-CUT-SPINDLE |
| Non-marring mount interface | TBD | measurement_required | glass fracture risk | design.md GA-CUT-MOUNT-INTERFACES |

## Incidental (free for DFM)

- Frame/bench styling and finish; exact bowl-count/diameter placeholders shown in cad/glass-armonica.scad (bench-planning only, not released tuning geometry).

## Must-nots (DFM may never violate)

- Never invent bowl, spindle, or drive dimensions — every value in cut-list.csv/bom.csv stays `pending_measurement` until a coupon test sets it (design.md, decision-record.md).
- Do not treat the OpenSCAD envelope as a bowl wall-profile, rim, or pitch model — explicitly out of scope (cad/glass-armonica.scad header).
- Do not mount a real bowl before a sacrificial mounting coupon test clears chip/pinch/overload risk (design.md Measurement Gates).
- Do not promote this packet above L2 — it is an explicitly-held L3-candidate per the no-promotion rule until measured bowl/spindle/drive evidence exists.

## Material intent

- Preferred: per bom.csv subsystem categories (graduated glass bowls, spindle, bearings, treadle/flywheel, frame, water tray) — all quantities/specs `pending_measurement`/`estimate_class_only`.
- Acceptable subs: none recorded (sourcing.csv is TBD pending coupon-test specs).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable.
