<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Glass Armonica

Status: L1 concept packet

Private V5 concept packet for a Franklin-style glass armonica: nested graduated
glass bowls mounted on a horizontal spindle, rotated by a treadle and flywheel,
and played by touching the wetted rims with fingers.

## Concept Boundary

This packet is a design study only. It does not contain fabricated dimensions,
tuning targets, glass recipes, spindle drawings, bearing specifications, or
cut-ready CAD/DXF files. Bowl size, wall profile, nesting clearance, spindle
hardware, drive ratio, rotation speed, and pitch mapping are all
`pending_measurement`.

## Core Mechanism

- Graduated glass bowls are nested coaxially on a horizontal spindle.
- A foot treadle drives a flywheel or pulley train so both hands remain free.
- The player wets the fingers and touches the rotating bowl rims to excite
  friction-driven vibration.
- Pitch is governed primarily by each bowl's geometry and glass properties,
  but this packet does not claim any pitch table.
- The engineering focus is quiet spindle support, stable bowl spacing,
  controlled wetting, safe guarding, and serviceable bowl mounting.

## Packet Map

- `design.md` - mechanism concept, parametric intent, and measurement gates.
- `bom.csv` - estimated parts classes only.
- `visual-output-register.csv` - V5 authority register; all rows are
  `concept_only` or `pending_measurement`.
- `cad/mcp-session-log.md` - provenance stub and QMD Step 0 result.
- `decision-record.md` - current decisions and open questions.

## Readiness

L1 means the repo captures intent and risk boundaries. Promotion to L2 requires
measured or sourced bowl data, a reviewed spindle/bearing layout, a safe drive
concept, and an authority register that separates reviewed fabrication sources
from concept notes.
