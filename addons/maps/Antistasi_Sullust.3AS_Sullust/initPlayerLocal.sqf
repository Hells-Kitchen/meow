diag_log "===== ANTISTASI SULLUST INIT CLIENT START =====";
if (isNil "A3A_fnc_initClient") then {
    diag_log "ERROR: A3A_fnc_initClient not found!";
} else {
    diag_log "A3A_fnc_initClient found, executing...";
    _this spawn A3A_fnc_initClient;
};
diag_log "===== ANTISTASI SULLUST INIT CLIENT END =====";
