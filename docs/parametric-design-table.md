<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Parametric Design Table

Status: symbolic relationships only. Authority remains `pending_measurement`.

This table expresses dependencies and proportions for future CAD/design-table
work. It intentionally provides no absolute dimensions, frequencies, rotation
speeds, drive ratios, tuning values, or tolerances.

| Parameter | Symbolic relationship | Authority state | Evidence needed |
| --- | --- | --- | --- |
| Bowl profile record | `bowl_profile[id] = measured_profile(id)` | pending_measurement | Measured bowl survey for each bowl ID. |
| Bowl nesting envelope | `nesting_envelope[id] = bowl_profile[id] + clearance_question[id]` | pending_measurement | Static and rotating clearance evidence. |
| Bowl spacing | `spacing[id] > dynamic_clearance[id] + guard_margin[id]` | pending_measurement | Measured clearance under rotation and player touch. |
| Spindle datum | `spindle_axis = reviewed_axis(bowl_stack, bearing_support)` | pending_measurement | Runout and alignment review. |
| Mount contact region | `mount_contact[id] = non_marring_interface(bowl_profile[id])` | pending_measurement | Glass-stress and slip review. |
| Bearing placement | `bearing_span = function(bowl_stack_envelope, service_access)` | pending_measurement | Reviewed load and service model. |
| Drive smoothing | `flywheel_effect = smoothness_requirement / treadle_variation` | pending_measurement | Drive mockup observations. |
| Belt or cord path | `drive_path = avoid(water_zone, guard_zone, service_zone)` | pending_measurement | Water and guarding review. |
| Water tray envelope | `tray_envelope = drip_path + wipe_area + player_access` | pending_measurement | Wetting test and cleanup review. |
| Guard envelope | `guard_envelope = rotating_glass_zone + drive_pinch_zone + service_clearance` | pending_measurement | Safety review and service sequence. |
| Pitch observation | `mounted_pitch[id] = measured_response(id, support_state, wetting_state)` | pending_measurement | Tooled measurement log with setup notes. |

## Use Rules

- These relationships may seed future CAD variables.
- They cannot be used as cut dimensions.
- Any variable with `clearance`, `margin`, `span`, `axis`, `pitch`, or
  `profile` in its name remains blocked until the corresponding evidence exists.
- A future generated table must preserve provenance columns for measured values,
  reviewed assumptions, and unresolved estimates.
