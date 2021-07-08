const sequelize = require('../config/connection');
const { Tag, ProductTag, Category, Product } = require('../models');

const categorySeedData = require('./categorySeedData.json');
const tagSeedData = require('./tagSeedData.json')
const productTagSeedData = require('./productTagSeedData.json')
const productSeedData = require('./productSeedData.json')


const seedDatabase = async () => {
  try {
    await sequelize.sync({ force: true });

    const categories = await Category.bulkCreate(categorySeedData, {
      individualHooks: true,
      returning: true,
    });
    const tag = await Tag.bulkCreate(tagSeedData, {
      individualHooks: true,
      returning: true,
    });
    const product = await Product.bulkCreate(productSeedData, {
      individualHooks: true,
      returning: true,
    });
    const productTag = await ProductTag.bulkCreate(productTagSeedData, {
      individualHooks: true,
      returning: true,
    });
  } catch (err) {
    console.log(err)
  }

  process.exit(0);
};

seedDatabase();