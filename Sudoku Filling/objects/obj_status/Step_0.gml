alpha = (time_to_lived - time_lived) * (time_to_lived + time_lived) / power(time_to_lived, 2);
time_lived += 1;
if (time_lived >= time_to_lived) {
	instance_destroy();
}