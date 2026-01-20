const { add, subtract } = require('./calculator');

test('adds numbers', () => {
  expect(add(2, 3)).toBe(5);
});

test('subtracts numbers', () => {
  expect(subtract(5, 3)).toBe(2);
});
