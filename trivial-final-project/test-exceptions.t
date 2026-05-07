print "Testing Exceptions...";

print "===== STRUCTURAL TEST =====";
x = 0;
try {
    print "inside try block";
    throw 67;
    print "dont print me";
    extern x = 1;
} catch (nice) {
    print "caught the exception: ";
    print nice;
    assert nice == 67;
    extern x = 2;
};
assert x == 2;

print "===== MORE REALISTIC TEST =====";

function safe_divide(a, b) {
    if (b == 0) {
        throw "DIVIDE BY ZERO ERROR";
    }
    return a / b;
};

print "attempting ten divided by two...";
try {
    result = safe_divide(10, 2);
    print "10 / 2 = ";
    print result;
} catch (error) {
    print "Error: ";
    print error;
};

print "attempting ten divided by zero...";
try {
    result = safe_divide(10, 0);
    print "10 / 0 = ";
    print result;
} catch (error) {
    print "Error: ";
    print error;
};

print "done.";