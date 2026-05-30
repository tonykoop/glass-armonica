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

## Authority Notes

- No fabricated dimensions, DXF coordinates, tuning values, bowl geometry,
  spindle specification, bearing specification, or drive ratio were created.
- All future CAD, renders, drawings, and pitch tables must trace to measured
  bowls, reviewed hardware choices, or explicit design-table authority before
  promotion beyond L1.
