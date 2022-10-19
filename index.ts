import * as express from "express";
import * as shelter from './pets/shelter/shelter';
import * as breeds from './pets/breeds/breeds';

const app: any = express();

/**
 * @klotho::expose {
 *  target = "public"
 *   id = "petsApp"
 * }
 */
app.listen(3000, async () => {
  console.log(`App listening locally`);
});

app.use(shelter.router)
app.use(breeds.router)
