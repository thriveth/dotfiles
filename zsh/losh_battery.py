#!/usr/bin/env python
# coding=UTF-8
# use with 'acpi | grep [0-9]*%'
import math, subprocess

#p = subprocess.Popen(["ioreg", "-rc", "AppleSmartBattery"], stdout=subprocess.PIPE)
#output = p.communicate()[0]

#o_max = [l for l in output.splitlines() if 'MaxCapacity' in l][0]
#o_cur = [l for l in output.splitlines() if 'CurrentCapacity' in l][0]

#b_max = float(o_max.rpartition('=')[-1].strip())
#b_cur = float(o_cur.rpartition('=')[-1].strip())

#charge = b_cur / b_max
#charge_threshold = int(math.ceil(10 * charge))

# Output
batt_info = subprocess.check_output('acpi').split(',')
batt_info = [l.strip() for l in batt_info]
percnt = int(batt_info[1][:-1])

total_slots, slots = 10, []
if batt_info[0].split()[-1] == 'Charging':
    filled_symbol = u'⚡'#'★'#'✷'#'✦'#'⚡'
    empty_symbol = '-'
else:
    filled_symbol = u'⚫'#'●'
    empty_symbol = '-' #u'\u25cb'
filled = int(math.ceil(percnt / 10.)) * filled_symbol #u'●'
empty = int(total_slots - len(filled)) *empty_symbol # u'\u25cb'
out = (empty + filled).encode('utf-8')
#print batt_info[0].split()[-1]
if batt_info[0].split()[-1] == 'Charging':
    out[5] == ''
#filled = int(math.ceil(percnt / 10.)) * u'●'
#empty = int(total_slots - len(filled)) * u'\u25cb'
#out = (empty + filled).encode('utf-8')
#print batt_info[0].split()[-1]
#if batt_info[0].split()[-1] == 'Charging':
#    out[5] == '⚡'
#print out

#print out
import sys

color_green = '%{[32m%}'# "%{$fg[green]%}"
color_yellow = '%{[1;33m%}'#"%{$fg[yellow]%}"
color_red = '%{[31m%}'# "%{$fg[red]%}"
color_reset = '%{[00m%}'#"%{$reset_color%}"
color_out = (
    color_green if len(filled) > 6
    else color_yellow if len(filled) > 4
    else color_red
)

#out = color_out + out + color_reset
#print out
sys.stdout.write(out)
