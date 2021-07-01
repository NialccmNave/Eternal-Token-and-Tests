# Eternal-Token-and-Tests
Token and test rough draft

async function shouldThrow(promise) {
try {
    await promise;
    assert(true);
}
catch (err) {
    return;
}
assert(false, "The contract did not throw.");

}

module.exports = {
    shouldThrow,
};
