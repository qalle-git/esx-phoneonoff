# esx-phoneonoff

[REQUIREMENTS]
  
* esx_phone3

[INSTALLATION]

1) CD in your resources/[esx] folder

2) Import ``item.sql`` in your database

3) Add this in your server.cfg :
``start esx-phoneonoff``

4) Add this where you want the toggle to be:
``TriggerServerEvent("esx_phone3:togglePhone")``

5) Make sure your item that open the phone is named ``phone``