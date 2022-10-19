/**
 * @klotho::execution_unit {
 *   id = "shelter"
 * }
 */
import { addDog, getDogs, getDog } from './dogs';
import { addCat, getCats, getCat} from './cats';


export const router = require('express').Router()

async function getAvailableCats(event, res) {
    const cats = await getCats()
    res.send(cats);
}

async function getAvailableDogs(event, res) {
    const dogs = await getDogs()
    res.send(dogs);
}

async function getCatByName(event, res) {
    const name = event.params.name
    console.log("Getting cat named: ", name)
    const cat = await getCat(name)
    res.send(cat);
}

async function getDogByName(event, res) {
    const name = event.params.name
    console.log("Getting dog named: ", name)
    const dog = await getDog(name)
    res.send(dog);
}

async function setUpShelter(event, res) {
    await addCat("Whiskers");
    await addCat("Felix");
    await addCat("Fluffy");
    await addCat("Oscar");

    await addDog("Bella");
    await addDog("Ginger");
    await addDog("Olive");
    await addDog("Misha");

    res.send("Shelter has been set up")
}


router.post('/v1/open', setUpShelter)
router.get('/v1/dogs', getAvailableDogs);
router.get('/v1/cats', getAvailableCats);
router.get('/v1/cats/:name', getCatByName);
router.get('/v1/dogs/:name', getDogByName);
