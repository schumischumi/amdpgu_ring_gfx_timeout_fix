#!/bin/bash
set -euo pipefail

card=/sys/class/drm/card0/device

echo 's 1 1600' > $card/pp_od_clk_voltage
echo 'm 1 750' > $card/pp_od_clk_voltage
echo 'c' > $card/pp_od_clk_voltage

echo 'manual' > $card/power_dpm_force_performance_level
echo '1' > $card/pp_dpm_sclk
echo '1' > $card/pp_dpm_mclk
