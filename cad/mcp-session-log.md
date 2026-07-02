<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# MCP Session Log

V5 provenance stub for the glass armonica L1 packet.

## Step 0 QMD

| Date | Command | Collection | Result | Notes |
| --- | --- | --- | --- | --- |
| 2026-05-30 | `qmd query "glass-armonica Franklin's glass armonica — nested graduated glass bowls on a horizontal spindle rotated by a foot treadle/flywheel; pitch from bowl diameter; played with wetted fingers; spindle bearings, bowl nesting/spacing, treadle drive"` | default | unavailable | Command was attempted and remained without output after repeated polls; it was stopped rather than used as authority. |
| 2026-05-30 | `qmd search "glass-armonica" -c instrument-builds` | `instrument-builds` | No results found. | No QMD record was used as fabrication, CAD, dimension, or tuning authority. |

## External Tool Sessions

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| none-2026-05-30 | none | Round 7 handoff and public-domain mechanical concept description in prompt. | `README.md`, `design.md`, `bom.csv`, `decision-record.md`, `visual-output-register.csv`, `cad/mcp-session-log.md` | l1_concept_packet | concept_only | self_checked | No MCP, CAD, image, audio, Wolfram, or CAM tool generated artifacts. |
| r8-wolfram-hand-authored-2026-05-30 | Codex local edit | Round 8 Wolfram author contract; existing L3-candidate packet boundary. | `glass-armonica-starter.wl`, `wolfram/glass-armonica-wolfram-model.wl`, `visual-output-register.csv`, `cad/mcp-session-log.md` | reference_only_wolfram_source | reference_only | self_checked | No MCP, Wolfram Desktop, Wolfram Cloud, CAD, DXF, measurement, tuner, or acoustic calibration session was run; source was authored by hand with estimate placeholders only. |

| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | design.md, decision-record.md (no design table/xlsx exists for this instrument) | bom.csv, cut-list.csv, sourcing.csv, validation.csv | packet_refresh | fabrication | self_checked | V5 refresh pass: added sourcing.csv and validation.csv baseline files; reviewed existing bom.csv/cut-list.csv against design.md — no dimension changes made, all rows remain pending_measurement. Provenance rows added to satisfy V5 fabrication-artifact logging. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) + OpenSCAD CLI | design.md subsystem gates (no design table/xlsx; all values marked `assumption`) | cad/glass-armonica.scad | cad_authoring | pending_measurement | self_checked | Non-dimensional spindle + graded bowl array bounding envelope authored as bench-planning layout only; bowl wall/rim profile, mount interface geometry, and drive ratio explicitly out of scope per design.md subsystem gates. OpenSCAD render check: pass (openscad -o STL, exit 0). |

## Authority Notes

- No fabricated dimensions, DXF coordinates, tuning values, bowl geometry,
  spindle specification, bearing specification, or drive ratio were created.
- All future CAD, renders, drawings, and pitch tables must trace to measured
  bowls, reviewed hardware choices, or explicit design-table authority before
  promotion beyond L1.
- 2026-07-01: `cad/glass-armonica.scad` was added as a non-dimensional
  spindle + graded bowl array bounding envelope (bench-planning layout
  only); it does not create bowl wall/rim profile, mount interface, or
  drive-ratio authority. Packet held at L2 per no-promotion rule.
