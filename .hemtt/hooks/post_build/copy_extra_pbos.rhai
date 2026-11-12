let pbos = [
    "JMSLLTE_veh_gr.pbo",
    "JMSLLTE_veh_gr_m.pbo",
    "JMSLLTE_veh_gr_m_static.pbo",
    "JMSLLTE_veh_gr_anim.pbo"
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
