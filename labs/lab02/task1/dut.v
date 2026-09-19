// dut.v

// Top-level wrapper to test either implementation.
// Uncomment exactly ONE instantiation at a time.

module DUT (
    input  I0,
    input  I1,
    input  S,
    output Y
);

    // ---- Option 1: Dataflow version ----
    mux_df U1 (
        .I0 (I0),
        .I1 (I1),
        .S  (S),
        .Y  (Y)
    );

    // ---- Option 2: Behavioral version ----
    // mux_beh U1 (
    //     .I0 (I0),
    //     .I1 (I1),
    //     .S  (S),
    //     .Y  (Y)
    // );

endmodule