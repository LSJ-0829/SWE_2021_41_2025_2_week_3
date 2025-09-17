FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
  loop = [n]\n\
  while n != 1:\n\
    sum = 0\n\
    while n >= 1:\n\
      sum += (n % 10) * (n % 10)\n\
      n /= 10\n\
      n = int(n)\n\
    n = sum\n\
    i = 0\n\
    while i < len(loop):\n\
      if loop[i] == n:\n\
        return False\n\
      i += 1\n\
    loop.append(n)\n\
  return True\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]