/// @description Bounce

interval += delta_time * bounceSpeed / 1000000;
if (interval > 2) {
	interval -= 2;
}

y = originalY + sin(interval * pi) * bounceMagnitude;