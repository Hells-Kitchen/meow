diag_log "===== ANTISTASI SULLUST INIT SERVER START =====";
if (isNil "A3A_fnc_initServer") then {
    diag_log "ERROR: A3A_fnc_initServer not found!";
} else {
    diag_log "A3A_fnc_initServer found, executing...";
    call A3A_fnc_initServer;
};
diag_log "===== ANTISTASI SULLUST INIT SERVER END =====";
