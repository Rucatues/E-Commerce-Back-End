const { Model, DataTypes } = require('sequelize');

const sequelize = require('../config/connection.js');

class Category extends Model { }

Category.init(
  {
    // columns defined
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },

    category_name: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
  sequelize,
  timestamps: false,
  freezeTableName: true, //uses singular table name instead of changing it to "Categorys"
  underscored: true, //sets field option on all attributes to snacke_case version of its name
  modelName: 'category'
});

module.exports = Category;
