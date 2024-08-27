## Box Occlusion Finder
This RedM tool supplies a console command to print the nearest box occlusions.

Printed output provides:
- Name of the ymap containing the box occlusion
- Distance from the box occlusion from the player position
- Position of the box occlusion

## Command:
```
/boxoccluderfind <number>
```

## Example Command/Output:
```
/boxoccluderfind

file=str_01_.ymap dist=4.83 <position x="-1771.5770263672" y="-433.28298950195" z="155.94700622559" />
```
```
/boxoccluderfind 5

1: file=new_frn_01.ymap dist=8.33 <position x="2594.9670410156" y="-1239.8360595703" z="58.101001739502" />
2: file=new_frn_01.ymap dist=8.99 <position x="2594.4221191406" y="-1239.7559814453" z="62.194000244141" />
3: file=new_frn_04.ymap dist=28.15 <position x="2627.1450195312" y="-1242.9079589844" z="53.104999542236" />
4: file=new_frn_04.ymap dist=29.63 <position x="2629.3740234375" y="-1242.9079589844" z="60.806999206543" />
5: file=new_frn_04.ymap dist=29.98 <position x="2629.3740234375" y="-1251.7719726562" z="57.418998718262" />
```
```
/boxoccluderfind 999

1: file=new_com_06.ymap dist=28.40 <position x="2739.3610839844" y="-1426.1190185547" z="45.576999664307" />
2: file=new_com_06.ymap dist=31.92 <position x="2747.791015625" y="-1421.1379394531" z="45.785999298096" />
3: file=new_com_06.ymap dist=39.07 <position x="2755.8259277344" y="-1391.4670410156" z="48.563999176025" />
4: file=new_com_06.ymap dist=39.33 <position x="2708.8269042969" y="-1443.4520263672" z="46.867000579834" />
5: file=new_com_04.ymap dist=47.75 <position x="2674.4399414062" y="-1397.8630371094" z="54.196998596191" />
6: file=new_com_04.ymap dist=50.89 <position x="2671.6149902344" y="-1396.9649658203" z="51.708000183105" />
7: file=new_com_06.ymap dist=51.64 <position x="2766.4399414062" y="-1431.4000244141" z="50.333999633789" />
8: file=new_com_06.ymap dist=51.70 <position x="2765.1120605469" y="-1432.7449951172" z="46.812999725342" />
9: file=new_com_06.ymap dist=53.06 <position x="2765.4089355469" y="-1433.0810546875" z="42.708000183105" />
10: file=new_com_05.ymap dist=53.35 <position x="2690.0939941406" y="-1364.7299804688" z="49.284999847412" />
```

## Installation:
- Download or Clone the repository into your resources folder
- Add `ensure box_occluder_finder` to your server.cfg or wherever you load your resources
