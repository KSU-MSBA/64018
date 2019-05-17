// Objective function
max: 9 x1 + 5x2 + 6x3 + 4x4;

// Constraints
TotalCapital: 6 x1 + 3 x2 + 5 x3 + 2 x4 <= 10;
OneWarehouse: x3 + x4 <= 1;
WarehouseLA: x3 - x1 <= 0;
WarehouseSF: x4 - x2 <= 0;

bin x1, x2, x3, x4;