<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Risk FMEA

Status: qualitative FMEA. Authority remains `concept_only`.

This review uses qualitative severity and detection language only. It assigns no
numeric scores and creates no fabrication authority.

| Failure mode | Potential effect | Current control | Detection question | Mitigation before L3 |
| --- | --- | --- | --- | --- |
| Bowl fracture during mounting | Injury, lost bowl, invalid measurement | Mount remains pending measurement | Can the mount support without point loading or slip? | Non-marring fixture test and damaged-bowl handling plan. |
| Bowl-to-bowl contact during play | Chipping, noise, unsafe rotation | Clearances remain open questions | Does clearance hold under rotation and finger contact? | Static and dynamic clearance tests for every bowl pair. |
| Spindle runout | Pitch instability, rubbing, bearing noise | Spindle authority blocked | Does the bowl stack rotate without visible wobble or contact? | Runout inspection before drive tests. |
| Bearing water intrusion | Noise, corrosion, seizure | Wetting design pending | Does water migrate toward bearings during play and cleanup? | Tested drip path, shields, and service inspection. |
| Treadle noise coupling | Mechanical noise masks glass tone | Drive design pending | Can drive noise be separated from glass response? | Quiet-drive mockup and frame isolation review. |
| Belt or flywheel pinch point | Player injury | Guarding pending | Can fingers, clothing, or cleanup cloth reach moving parts? | Guard mockup and service-only access plan. |
| Overconfident pitch mapping | False tuning authority | Tuning authority is none | Is every pitch observation tied to bowl ID and setup? | Separate free and mounted response logs. |
| Wetting mess or poor access | Unplayable interface, water damage | Water tray pending | Can the player wet and wipe fingers without reaching through hazards? | Wetting workflow test with guard mockups. |
| Service process damages glass | Breakage during removal or adjustment | Service sequence pending | Can a bowl be removed without forcing neighboring parts? | Assembly/disassembly rehearsal with non-marring supports. |
| Concept images treated as shop authority | Fabrication from non-dimensional artifact | Register marks visuals concept-only | Does every build decision cite measured or reviewed authority? | Visual-output register review before any CAD or drawing release. |

## Blocking Criteria

The packet must not be promoted to true L3 while any row lacks a tested control,
reviewed detection method, or register-backed evidence artifact.
