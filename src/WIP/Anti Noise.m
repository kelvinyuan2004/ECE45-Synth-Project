fs = 8192;
t = [0:1/fs:size];
mu = .006;
N = fs*2;

input = (tie to device microphone or smth)
noise = cos(2*pi*99/2*t);

primary = input + noise;

%Code

for i=1:N-order
	buffer = ref(i:i+order-1);
	desired(i) = primary(i)-buffer*x
	x=x+(buffer.*mu*desired(i)/norm(buffer));
end
