import {
  DataTypes,
  InferAttributes,
  InferCreationAttributes,
  Model,
  Sequelize,
} from "sequelize";

const sequelize = setupSequelize();

async function setupSequelize(): Promise<Sequelize> {

  /**
   * @klotho::persist  {
   *   id = "sequelizeDB"
   * }
   */ 
  const sequelize = new Sequelize(`sqlite::memory:`, { logging: false });

  console.log("connecting");
  await sequelize.authenticate();
  await sequelize.sync({ alter: true });
  console.log("connected");
  return sequelize;
}

interface attribs
  extends Model<InferAttributes<attribs>, InferCreationAttributes<attribs>> {
  name: string;
  type: string;
}

const KV = sequelize.then(async (client) => {
  const KV = client.define<Model<InferAttributes<attribs>>>(
    "KV",
    {
      name: {
        type: DataTypes.STRING,
        allowNull: false,
        primaryKey: true,
      },
      type: {
        type: DataTypes.STRING,
        allowNull: false,
      },
    },
    {}
  );
  await KV.sync({ alter: true });
  return KV;
});

export async function set(name: string, type: string) {
  try {
    const client = await KV;
    const item = await client.upsert({ name: name, type: type });
  } catch (error) {
    console.error(
      `unable to set name:${name}, type:${type}. Received error:${error}`
    );
  }
}

export async function get(name: string): Promise<any> {
  try {
    const client = await KV;
    const items = await client.findAll({
      where: {
        name: name,
      },
    });
    if (items.length == 1) {
      return items[0].get();
    }
  } catch (error) {
    console.error(`unable to get name:${name}. Received error:${error}`);
  }

  return undefined;
}

export async function getAllType(type: string): Promise<any> {
  try {
    const client = await KV;
    const items = await client.findAll({
      where: {
        type: type,
      },
    });
    return items
  } catch (error) {
    console.error(`unable to get all type:${type}. Received error:${error}`);
  }

  return undefined;
}
