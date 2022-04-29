function CheakPrime(num) {
	let isPrime

	for (let i = 2; i < num; i++) {
		if (num % i != 0) {
			isPrime = true;
		} else {
			isPrime = false;
			console.log('Result: ', num, 'is not prime number');
			break;
		}
	}
	if (isPrime) {
		console.log('Result: ', num, 'is prime number');
	}
}
function isPrimeNumber(number) {
	if (typeof(number) == "number") {
		CheakPrime(number)
	} else {
		if (typeof(number) == "object") {
			for (let n = 0; n < number.length; n++) {
				if (typeof(number[n]) == 'number') {
					CheakPrime(number[n])
				} else {
					console.log('Error');
				}	
			}
		} else {
			console.log('Error');
		}	
	}
}