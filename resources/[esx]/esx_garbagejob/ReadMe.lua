-- Version History --

Latest Fixes:  6/8/2019
* Fixed issue with Female characters being switched to Male when changing back to Civ clothing.


Recent Fixes:
* fixed bagpay not resetting after collection to add right amount to destination pay.
* added ActionMsg for Truck returns
* adjusted small garbage bag attachment to make it look more natural when walking with the bag.
* added function to allow script restarts and having markers showing up.
* Added - cs locale file - from pull request
* Added - ge locale file - from pull request



Consider this a Add-On Release since I have only modified the original code to add RP potential.  90% of this script is still
the original author's script with 10% my addition to make players get out and collect bags for RP potential.

The original creator is listed on the copy that I recieved are:


-- ORIGINAL SCRIPT BY Marcio FOR CFX-ESX


Changes to the script:

* added: bag collection to each destination. (driver will have to get out to collect bags from trash bin.)
* added: pay per bag - the more you do the more you earn.
* added: animations from heist "Series A Funding" for walking while holding bag, and putting bag in truck.
* added: check for last job to keep from getting sent to the same job over and over.


-- Requires--

ESX_Jobs

  
-- Install --
  
  Import garbagejob_v2.sql if you do not already have the garbagejob on your server for work clothes settings.
  add esx_garbagejob_v2 to your resource folder
  start esx_garbagejob_v2 in your server.fg
      
      
-- Pull Reuqests --
      
      I have kept these pull requests in this version of the script and will be goign thu the remaining pull requests for testing before
      they go live.
      
      Added de locale.
      Added cs locale.
      
      Adjusted Vehicle spawn menu to bottom right corner
      Added Keys code to script for easy adjusting input keys.
      
      
