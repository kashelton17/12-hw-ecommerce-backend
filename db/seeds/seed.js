const sequelize = require('../config/connection');
const { Tag, ProductTag, Category, Product } = require('../models');

const categorySeedData = require('./categorySeedData.json');

const seedDatabase = async () => {
  await sequelize.sync({ force: true });

  const categories = await Category.bulkCreate(categorySeedData, {
    individualHooks: true,
    returning: true,
  });

  for (const { id } of readers) {
    const newCard = await LibraryCard.create({
      reader_id: id,
    });
  }

  process.exit(0);
};

seedDatabase();