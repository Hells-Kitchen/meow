let pbos = [
    "KA_Flamethrower.pbo",
    "MWB_RSH12.pbo",
    "re_boc.pbo",
    "re_catTab_core.pbo",
    "re_catTab_data.pbo",
    "re_catTab_ui.pbo",
    "re_chvd.pbo",
    "re_pronelauncher.pbo",
    "re_wmo.pbo"
];

for pbo in pbos {
    let src = HEMTT_RFS.join("tools").join("extra_pbos").join(pbo);
    if src.is_file() {
        src.copy(HEMTT_OUT.join("addons").join(pbo));
        print("Copied " + pbo + " to build output");
    } else {
        print("Warning: tools/extra_pbos/" + pbo + " not found, skipping");
    }
}
