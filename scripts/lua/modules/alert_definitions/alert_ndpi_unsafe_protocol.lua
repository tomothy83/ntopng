--
-- (C) 2019-21 - ntop.org
--

-- ##############################################

local alert_keys = require "alert_keys"
package.path = dirs.installdir .. "/scripts/lua/modules/?.lua;" .. package.path
-- Import the classes library.
local classes = require "classes"
-- Make sure to import the Superclass!
local alert = require "alert"

-- ##############################################

local alert_ndpi_unsafe_protocol = classes.class(alert)

-- ##############################################

alert_ndpi_unsafe_protocol.meta = {
   alert_key  = alert_keys.ntopng.alert_ndpi_unsafe_protocol,
   i18n_title = "alerts_dashboard.ndpi_unsafe_protocol_title",
   icon = "fas fa-exclamation",
}

-- ##############################################

-- @brief Prepare an alert table used to generate the alert
-- @return A table with the alert built
function alert_ndpi_unsafe_protocol:init()
   -- Call the parent constructor
   self.super:init()

   self.alert_type_params = {}
end

-- #######################################################

function alert_ndpi_unsafe_protocol.format(ifid, alert, alert_type_params)
   return
end

-- #######################################################

return alert_ndpi_unsafe_protocol
