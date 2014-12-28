sum = 0; (0...1000).each { | i | sum = sum + i if (i % 5 == 0 || i % 3 == 0) }; puts sum;

sum = (0...1000).select { | i | i % 5 == 0 || i % 3 == 0 }.reduce (:+); puts sum

sum = (0...1000).select { | i | i % 5 == 0 || i % 3 == 0 }.inject(0) { | sum, j | sum+j }; puts sum

