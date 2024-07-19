module VeriQuEST

    using LinearAlgebra
    using Chain
    using Graphs
    using Revise
    using MetaGraphs
    using Random # Needed for shuffle function
    using RandomMatrices
    using Combinatorics # For permutations
    using QuEST
    using Printf
    using StatsBase
    using CairoMakie
    


export
    Client,
    Phase,
    NoPhase,
    SecretAngles,
    Ok,
    Abort,
    TrapPass,
    TrapFaile,
    QubitInitialState,
    BasisAngle,
    MeasurementOutcome,
    AdjacencyList,
    Server,
    NoisyChannel,
    DummyQubit,
    ComputationQubit,
    TrapQubit,
    ComputationRound,
    TestRound,
    MBQCRound,
    MBQC,
    InputQubits,
    NoInputQubits,
    ForwardFlow,
    BackwardFlow,
    MBQCAngles ,
    MBQCResourceState ,
    MBQCMeasurementOutcomes ,
    StateVector,
    DensityMatrix,
    Terse,
    Verbose,
    TrustworthyServer,
    NoisyChannel,
    DummyQubitZeroOneInitialisationError,
    QubitFloatPhaseInitialisationError,
    FunctionNotMeantToBeUsedWarning,
    Quest,
    SingleQubit,
    TwoQubits,
    DensityMatrices,
    MultipleQubits ,
    TracePreserving,
    NotTracePreserving ,
    ProbabilityExceedsOneError,
    ProbabilityExceedsOneHalfError,
    ProbabilityExceedsThreeQuartersError,
    ProbabilityExceedsFifteenSixteensError,
    ProbabilityLessThanZeroError,
    ProbabilityExceedsNoErrorExceededError,
    DimensionMismatchDensityMatricesError,
    ExceededNumKrausOperatorsError,
    UntestedKrausFunctionWarning,
    NoiseModel,
    AbstractNoiseModels,
    NoiseParameters,
    NoNoiseParameters,
    QubitNoiseParameters,
    OnlySingleQubitNoiseInUseError,
    DensityMatrixMixtureParameters,
    KrausMapNoiseParameters,
    NoNoise,
    Damping,
    MixtureDensityMatrices,
    Dephasing,
    Depolarising,
    Kraus,
    Pauli,
    InherentBoundedError,
    MaliciousServer,
    add_noise!,
    add_flow_vertex!,
    add_correction_vertices!,
    add_round_type!,
    add_output_qubits!,
    add_damping!,
    add_dephasing!,
    add_depolarising!,
    add_pauli_noise!,
    apply_kraus_map!,
    assert_comment,
    assert_flow,
    create_graph_resource,
    create_plus_phase_density_mat,
    convert_flow_type_symbol,
    compute_angle_δᵥ,
    compute_backward_flow,
    compute_trap_round_fail_threshold,
    clone_qureq,
    clone_graph,
    create_resource,
    create_quantum_env,
    create_quantum_state,
    create_ubqc_resource,
    draw_bit,
    draw_θᵥ,
    draw_rᵥ,    
    draw_dᵥ,
    draw_random_rounds,
    entangle_graph!,
    generate_property_graph!,
    generate_random_greedy_color,
    get_state_vector_pair_per_qubit,     
    get_noise_model,
    get_vector_graph_colors,
    get_number_vertices,
    get_edge_iterator,
    get_vertex_iterator,
    get_vertex_neighbours,
    get_input_indices,
    get_input_values,
    get_input_value,
    get_angles,
    get_angle,
    get_graph,
    get_flow,
    get_verified_flow_output,
    get_verified_flow,
    get_input_size,
    get_output_size,
    get_minimum_vertex_index_flow,
    get_size_measurement_vector,
    get_measurement_outcome_iterator,
    get_stop_start_vertices,
    get_corrections_one_neighbourhood_two_vertex_graph,
    get_corrections_one_neighbourhood_mulit_vertex_graph,
    get_corrections_multi_neighbourhood_mulit_vertex_graph,
    get_correction_vertices,
    get_noise_model_params,
    get_random_coloring,
    get_updated_ϕ!,
    get_output,
    get_mode_output,
    get_ubqc_output,
    ident_2x2,
    init_outcomes_vector,
    is_vertex_in_graph,
    init_qubit,
    init_qubit_meta_graph!,
    init_measurement_outcomes!,
    initialise_quantum_state_meta_graph!,
    is_round_OK,
    initialise_blank_quantum_state!,
    MetaGraph,
    measure_along_ϕ_basis!,
    mix_two_density_matrices!,
    ok_abort_y,
    phase,  
    plot_verification_results,
    produce_initialised_graph,
    produce_initialised_qureg,
    rand_k_0_7,
    run_verification,
    run_verification_simulator,
    run_computation,
    run_ubqc,
    run_mbqc,
    store_measurement_outcome!,
    separate_each_color,
    set_vertex_type!,
    set_io_qubits_type!,
    throw_error,
    throw_warning,
    two_pi_x,
    update_ϕ,
    update_ϕ!,
    update_measurement,
    verify_round,
    verify_rounds
    


    include("abstract_types.jl")
    include("structs.jl")
    include("draw_random_numbers.jl")
    include("asserts_errors_warnings.jl")
    include("create_quantum_state_env.jl")
    include("input_output_mbqc.jl")
    include("colourings.jl")
    include("graphs.jl")
    include("angles.jl")
    include("flow.jl")
    include("computation_types.jl")
    include("trapification_strategies.jl")
    include("abstract_parameter_resources.jl")
    include("network_emulation.jl")
    include("property_graph.jl")
    include("entangle.jl")
    include("noisy_functions.jl")
    include("measurements.jl")
    include("run_quantum_computation.jl")
    include("verification.jl")

end
