--
-- (C) 2017-20 - ntop.org
--

package.path = dirs.installdir .. "/scripts/lua/modules/pools/?.lua;" .. package.path
local base_pools = require "base_pools"
local interface_pools = {}

-- ##############################################

-- @brief Returns members which doesn't belong to any pool
function interface_pools.list_available_members()
   -- STUB: currently returns all members
   local res = {}

   for ifid, ifname in pairs(interface.getIfNames()) do
      res[#res + 1] = ifid
   end

   return res
end

-- ##############################################

-- @brief Returns available confset ids which can be added to a pool
function interface_pools.list_available_configset_ids()
   -- Just call the function in base_pools, see if it can be done with inheritance
   return base_pools.list_available_configset_ids()
end

-- ##############################################

return interface_pools
