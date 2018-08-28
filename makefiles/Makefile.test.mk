# Targets to run tests
.PHONY: test_cc_examples
test_cc_examples: cc
	$(BIN_DIR)$Sgolomb$E --size=5
	$(BIN_DIR)$Scvrptw$E
	$(BIN_DIR)$Sflow_api$E
	$(BIN_DIR)$Slinear_programming$E
	$(BIN_DIR)$Sinteger_programming$E
	$(BIN_DIR)$Stsp$E
	$(BIN_DIR)$Sac4r_table_test$E
	$(BIN_DIR)$Sboolean_test$E
	$(BIN_DIR)$Sbug_fz1$E
	$(BIN_DIR)$Scpp11_test$E
	$(BIN_DIR)$Sforbidden_intervals_test$E
	$(BIN_DIR)$Sgcc_test$E
#	$(BIN_DIR)$Sissue173$E # error: too long
	$(BIN_DIR)$Sissue57$E
	$(BIN_DIR)$Smin_max_test$E
	$(BIN_DIR)$Svisitor_test$E

.PHONY: test_fz_examples
test_fz_examples: fz
	$(BIN_DIR)$Sfz$E $(EX_DIR)$Sflatzinc$Sgolomb.fzn
	$(BIN_DIR)$Sfz$E $(EX_DIR)$Sflatzinc$Salpha.fzn

.PHONY: test_python_examples
test_python_examples: python
	$(MAKE) rpy_3_jugs_mip
	$(MAKE) rpy_3_jugs_regular
	$(MAKE) rpy_alldifferent_except_0
	$(MAKE) rpy_all_interval
	$(MAKE) rpy_alphametic
	$(MAKE) rpy_appointments
	$(MAKE) rpy_a_round_of_golf
	$(MAKE) rpy_assignment6_mip
	$(MAKE) rpy_assignment
	$(MAKE) rpy_assignment_sat
	$(MAKE) rpy_assignment_with_constraints
	$(MAKE) rpy_assignment_with_constraints_sat
	$(MAKE) rpy_bacp
	$(MAKE) rpy_balance_group_sat
	$(MAKE) rpy_blending
	$(MAKE) rpy_broken_weights
	$(MAKE) rpy_bus_schedule
	$(MAKE) rpy_car
	$(MAKE) rpy_check_dependencies
	$(MAKE) rpy_chemical_balance_lp
	$(MAKE) rpy_chemical_balance_sat
	$(MAKE) rpy_circuit
	$(MAKE) rpy_code_samples_sat
	$(MAKE) rpy_coins3
	$(MAKE) rpy_coins_grid_mip
	$(MAKE) rpy_coins_grid ARGS="5 2"
	$(MAKE) rpy_coloring_ip
	$(MAKE) rpy_combinatorial_auction2
	$(MAKE) rpy_contiguity_regular
	$(MAKE) rpy_costas_array
	$(MAKE) rpy_covering_opl
	$(MAKE) rpy_cp_is_fun_sat
	$(MAKE) rpy_crew
	$(MAKE) rpy_crossword2
	$(MAKE) rpy_crypta
	$(MAKE) rpy_crypto
	$(MAKE) rpy_curious_set_of_integers
	$(MAKE) rpy_cvrp
#	$(MAKE) rpy_cvrptw_plot # error: py3 failure, missing numpy.
	$(MAKE) rpy_cvrptw
	$(MAKE) rpy_debruijn_binary
	$(MAKE) rpy_diet1_b
	$(MAKE) rpy_diet1_mip
	$(MAKE) rpy_diet1
	$(MAKE) rpy_discrete_tomography
	$(MAKE) rpy_divisible_by_9_through_1
	$(MAKE) rpy_dudeney
	$(MAKE) rpy_einav_puzzle2
	$(MAKE) rpy_einav_puzzle
	$(MAKE) rpy_eq10
	$(MAKE) rpy_eq20
	$(MAKE) rpy_fill_a_pix
	$(MAKE) rpy_flexible_job_shop_sat
	$(MAKE) rpy_furniture_moving
	$(MAKE) rpy_futoshiki
	$(MAKE) rpy_game_theory_taha
	$(MAKE) rpy_gate_scheduling_sat
	$(MAKE) rpy_golomb8
	$(MAKE) rpy_grocery
	$(MAKE) rpy_hidato ARGS="3 3"
	$(MAKE) rpy_hidato_sat
	$(MAKE) rpy_hidato_table
	$(MAKE) rpy_integer_programming
	$(MAKE) rpy_jobshop_ft06_distance
	$(MAKE) rpy_jobshop_ft06
	$(MAKE) rpy_jobshop_ft06_sat
	$(MAKE) rpy_just_forgotten
	$(MAKE) rpy_kakuro
	$(MAKE) rpy_kenken2
	$(MAKE) rpy_killer_sudoku
	$(MAKE) rpy_knapsack_cp
	$(MAKE) rpy_knapsack_mip
	$(MAKE) rpy_knapsack
	$(MAKE) rpy_labeled_dice
	$(MAKE) rpy_langford
	$(MAKE) rpy_least_diff
	$(MAKE) rpy_least_square
	$(MAKE) rpy_lectures
	$(MAKE) rpy_linear_assignment_api
	$(MAKE) rpy_linear_programming
	$(MAKE) rpy_magic_sequence_distribute
	$(MAKE) rpy_magic_square_and_cards
	$(MAKE) rpy_magic_square_mip
# warning: magic_square take 21s
	$(MAKE) rpy_magic_square
	$(MAKE) rpy_map
	$(MAKE) rpy_marathon2
	$(MAKE) rpy_max_flow_taha
	$(MAKE) rpy_max_flow_winston1
	$(MAKE) rpy_minesweeper
	$(MAKE) rpy_mr_smith
	$(MAKE) rpy_nonogram_default_search
	$(MAKE) rpy_nonogram_regular
	$(MAKE) rpy_nonogram_table2
	$(MAKE) rpy_nonogram_table
#	$(MAKE) rpy_nontransitive_dice # error: too long
	$(MAKE) rpy_nqueens2
	$(MAKE) rpy_nqueens3
	$(MAKE) rpy_nqueens
	$(MAKE) rpy_nqueens_sat
	$(MAKE) rpy_nurse_rostering
	$(MAKE) rpy_nurses_cp
# warning: nurse_sat take 18s
	$(MAKE) rpy_nurses_sat
	$(MAKE) rpy_olympic
	$(MAKE) rpy_organize_day
	$(MAKE) rpy_pandigital_numbers
	$(MAKE) rpy_photo_problem
	$(MAKE) rpy_place_number_puzzle
	$(MAKE) rpy_p_median
	$(MAKE) rpy_post_office_problem2
	$(MAKE) rpy_production
	$(MAKE) rpy_pyflow_example
	$(MAKE) rpy_pyls_api
	$(MAKE) rpy_quasigroup_completion
	$(MAKE) rpy_rabbit_pheasant
	$(MAKE) rpy_rcpsp_sat
	$(MAKE) rpy_regular
	$(MAKE) rpy_regular_table2
	$(MAKE) rpy_regular_table
	$(MAKE) rpy_rogo2
	$(MAKE) rpy_rostering_with_travel
	$(MAKE) rpy_safe_cracking
	$(MAKE) rpy_scheduling_speakers
#	$(MAKE) rpy_school_scheduling_sat # error: too long
	$(MAKE) rpy_secret_santa2
#	$(MAKE) rpy_secret_santa # error: too long
	$(MAKE) rpy_send_more_money_any_base
	$(MAKE) rpy_sendmore
	$(MAKE) rpy_send_most_money
	$(MAKE) rpy_seseman_b
	$(MAKE) rpy_seseman
	$(MAKE) rpy_set_covering2
	$(MAKE) rpy_set_covering3
	$(MAKE) rpy_set_covering4
	$(MAKE) rpy_set_covering_deployment
	$(MAKE) rpy_set_covering
	$(MAKE) rpy_set_covering_skiena
	$(MAKE) rpy_set_partition
	$(MAKE) rpy_sicherman_dice
	$(MAKE) rpy_simple_meeting
	$(MAKE) rpy_ski_assignment
	$(MAKE) rpy_slitherlink
	$(MAKE) rpy_stable_marriage
	$(MAKE) rpy_steel_lns
	$(MAKE) rpy_steel_mill_slab_sat
	$(MAKE) rpy_steel
	$(MAKE) rpy_stigler
	$(MAKE) rpy_strimko2
	$(MAKE) rpy_subset_sum
	$(MAKE) rpy_sudoku
	$(MAKE) rpy_survo_puzzle
	$(MAKE) rpy_toNum
	$(MAKE) rpy_traffic_lights
	$(MAKE) rpy_transit_time
	$(MAKE) rpy_tsp
	$(MAKE) rpy_vendor_scheduling
	$(MAKE) rpy_volsay2
	$(MAKE) rpy_volsay3
	$(MAKE) rpy_volsay
	$(MAKE) rpy_vrpgs
	$(MAKE) rpy_vrp
	$(MAKE) rpy_wedding_optimal_chart
	$(MAKE) rpy_wedding_optimal_chart_sat
	$(MAKE) rpy_who_killed_agatha
#	$(MAKE) rpy_word_square # Not working on window since it rely on /usr/share/dict/words
	$(MAKE) rpy_worker_schedule_sat
	$(MAKE) rpy_xkcd
	$(MAKE) rpy_young_tableaux
	$(MAKE) rpy_zebra
	$(SET_PYTHONPATH) "$(PYTHON_EXECUTABLE)" $(EX_DIR)$Stests$Stest_cp_api.py
	$(SET_PYTHONPATH) "$(PYTHON_EXECUTABLE)" $(EX_DIR)$Stests$Stest_lp_api.py

.PHONY: test_java_examples
test_java_examples: java
	$(MAKE) rjava_AllDifferentExcept0
	$(MAKE) rjava_AllInterval
	$(MAKE) rjava_CapacitatedVehicleRoutingProblemWithTimeWindows
	$(MAKE) rjava_Circuit
	$(MAKE) rjava_CoinsGridMIP
	$(MAKE) rjava_ColoringMIP
	$(MAKE) rjava_CoveringOpl
	$(MAKE) rjava_Crossword
	$(MAKE) rjava_DeBruijn
	$(MAKE) rjava_Diet
	$(MAKE) rjava_DietMIP
	$(MAKE) rjava_DivisibleBy9Through1
	$(MAKE) rjava_FlowExample
	$(MAKE) rjava_GolombRuler
	$(MAKE) rjava_IntegerProgramming
	$(MAKE) rjava_Knapsack
	$(MAKE) rjava_KnapsackMIP
	$(MAKE) rjava_LeastDiff
	$(MAKE) rjava_LinearAssignmentAPI
	$(MAKE) rjava_LinearProgramming
	$(MAKE) rjava_LsApi
	$(MAKE) rjava_MagicSquare
	$(MAKE) rjava_Map2
	$(MAKE) rjava_Map
	$(MAKE) rjava_Minesweeper
	$(MAKE) rjava_MultiThreadTest
	$(MAKE) rjava_NQueens2
	$(MAKE) rjava_NQueens
	$(MAKE) rjava_Partition
	$(MAKE) rjava_QuasigroupCompletion
	$(MAKE) rjava_RabbitsPheasants
	$(MAKE) rjava_SendMoreMoney2
	$(MAKE) rjava_SendMoreMoney
	$(MAKE) rjava_SendMostMoney
	$(MAKE) rjava_Seseman
	$(MAKE) rjava_SetCovering2
	$(MAKE) rjava_SetCovering3
	$(MAKE) rjava_SetCovering4
	$(MAKE) rjava_SetCoveringDeployment
	$(MAKE) rjava_SetCovering
	$(MAKE) rjava_SimpleRoutingTest
	$(MAKE) rjava_StableMarriage
	$(MAKE) rjava_StiglerMIP
	$(MAKE) rjava_Strimko2
	$(MAKE) rjava_Sudoku
	$(MAKE) rjava_SurvoPuzzle
	$(MAKE) rjava_ToNum
	$(MAKE) rjava_Tsp
	$(MAKE) rjava_Vrp
	$(MAKE) rjava_WhoKilledAgatha
	$(MAKE) rjava_Xkcd
	$(MAKE) rjava_YoungTableaux

.PHONY: test_donet_examples
test_dotnet_examples: dotnet
	$(MAKE) rdotnet_3_jugs_regular # csharp examples
	$(MAKE) rdotnet_alldifferent_except_0
	$(MAKE) rdotnet_all_interval
	$(MAKE) rdotnet_a_puzzle
	$(MAKE) rdotnet_a_round_of_golf
	$(MAKE) rdotnet_assignment
	$(MAKE) rdotnet_broken_weights
	$(MAKE) rdotnet_bus_schedule
	$(MAKE) rdotnet_circuit2
	$(MAKE) rdotnet_circuit
	$(MAKE) rdotnet_coins3
	$(MAKE) rdotnet_coins_grid ARGS="5 2"
	$(MAKE) rdotnet_combinatorial_auction2
	$(MAKE) rdotnet_contiguity_regular
	$(MAKE) rdotnet_contiguity_transition
	$(MAKE) rdotnet_costas_array
	$(MAKE) rdotnet_covering_opl
	$(MAKE) rdotnet_crew
	$(MAKE) rdotnet_crossword
	$(MAKE) rdotnet_crypta
	$(MAKE) rdotnet_crypto
	$(MAKE) rdotnet_cscvrptw
	$(MAKE) rdotnet_csflow
	$(MAKE) rdotnet_csintegerprogramming
	$(MAKE) rdotnet_csjobshop
	$(MAKE) rdotnet_csknapsack
	$(MAKE) rdotnet_cslinearprogramming
	$(MAKE) rdotnet_csls_api
	$(MAKE) rdotnet_csrabbitspheasants
	$(MAKE) rdotnet_cstsp
	$(MAKE) rdotnet_curious_set_of_integers
	$(MAKE) rdotnet_debruijn
	$(MAKE) rdotnet_diet
	$(MAKE) rdotnet_discrete_tomography
	$(MAKE) rdotnet_divisible_by_9_through_1
	$(MAKE) rdotnet_dudeney
	$(MAKE) rdotnet_einav_puzzle2
	$(MAKE) rdotnet_eq10
	$(MAKE) rdotnet_eq20
	$(MAKE) rdotnet_fill_a_pix
	$(MAKE) rdotnet_furniture_moving
	$(MAKE) rdotnet_furniture_moving_intervals
	$(MAKE) rdotnet_futoshiki
	$(MAKE) rdotnet_gate_scheduling_sat
	$(MAKE) rdotnet_golomb_ruler
	$(MAKE) rdotnet_grocery
	$(MAKE) rdotnet_hidato_table
	$(MAKE) rdotnet_jobshop_ft06_sat
	$(MAKE) rdotnet_just_forgotten
	$(MAKE) rdotnet_kakuro
	$(MAKE) rdotnet_kenken2
	$(MAKE) rdotnet_killer_sudoku
	$(MAKE) rdotnet_labeled_dice
	$(MAKE) rdotnet_langford
	$(MAKE) rdotnet_least_diff
	$(MAKE) rdotnet_lectures
	$(MAKE) rdotnet_magic_sequence
	$(MAKE) rdotnet_magic_square_and_cards
	$(MAKE) rdotnet_magic_square
	$(MAKE) rdotnet_map2
	$(MAKE) rdotnet_map
	$(MAKE) rdotnet_marathon2
	$(MAKE) rdotnet_max_flow_taha
	$(MAKE) rdotnet_max_flow_winston1
	$(MAKE) rdotnet_minesweeper
	$(MAKE) rdotnet_mr_smith
#	$(MAKE) rdotnet_nontransitive_dice # too long
	$(MAKE) rdotnet_nqueens
	$(MAKE) rdotnet_nurse_rostering_regular
	$(MAKE) rdotnet_nurse_rostering_transition
	$(MAKE) rdotnet_nurses_sat
	$(MAKE) rdotnet_olympic
	$(MAKE) rdotnet_organize_day
	$(MAKE) rdotnet_organize_day_intervals
	$(MAKE) rdotnet_pandigital_numbers
#	$(MAKE) rdotnet_partition # too long
	$(MAKE) rdotnet_perfect_square_sequence
	$(MAKE) rdotnet_photo_problem
	$(MAKE) rdotnet_place_number_puzzle
	$(MAKE) rdotnet_p_median
	$(MAKE) rdotnet_post_office_problem2
	$(MAKE) rdotnet_quasigroup_completion
	$(MAKE) rdotnet_regex
	$(MAKE) rdotnet_rogo2
	$(MAKE) rdotnet_scheduling_speakers
	$(MAKE) rdotnet_secret_santa2
#	$(MAKE) rdotnet_secret_santa # too long
	$(MAKE) rdotnet_send_more_money2
	$(MAKE) rdotnet_send_more_money
	$(MAKE) rdotnet_send_most_money
	$(MAKE) rdotnet_seseman
	$(MAKE) rdotnet_set_covering2
	$(MAKE) rdotnet_set_covering3
	$(MAKE) rdotnet_set_covering4
	$(MAKE) rdotnet_set_covering
	$(MAKE) rdotnet_set_covering_deployment
	$(MAKE) rdotnet_set_covering_skiena
	$(MAKE) rdotnet_set_partition
	$(MAKE) rdotnet_sicherman_dice
	$(MAKE) rdotnet_ski_assignment
	$(MAKE) rdotnet_slow_scheduling
	$(MAKE) rdotnet_stable_marriage
	$(MAKE) rdotnet_strimko2
	$(MAKE) rdotnet_subset_sum
	$(MAKE) rdotnet_sudoku
	$(MAKE) rdotnet_survo_puzzle
	$(MAKE) rdotnet_TaskScheduling
	$(MAKE) rdotnet_techtalk_scheduling
	$(MAKE) rdotnet_to_num
	$(MAKE) rdotnet_traffic_lights
	$(MAKE) rdotnet_tsp
	$(MAKE) rdotnet_volsay
	$(MAKE) rdotnet_volsay2
	$(MAKE) rdotnet_volsay3
	$(MAKE) rdotnet_wedding_optimal_chart
	$(MAKE) rdotnet_who_killed_agatha
	$(MAKE) rdotnet_word_square
	$(MAKE) rdotnet_xkcd
	$(MAKE) rdotnet_young_tableaux
	$(MAKE) rdotnet_zebra
	$(MAKE) rdotnet_Program # fsharp examples
