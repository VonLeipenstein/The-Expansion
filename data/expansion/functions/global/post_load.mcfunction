function expansion:global/dimension_test
execute in expansion:space/space run function expansion:destinations/space/generation_test
execute if score #total_system gen_success matches 0 run function expansion:destinations/space/start_generation