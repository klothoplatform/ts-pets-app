/**
 * @klotho::execution_unit {
 *   id = "breeds"
 * }
 */
export const router = require('express').Router()

function getDogBreeds(event, res) {
    const breeds = ["Retrievers (Labrador)", "French Bulldogs", "Retrievers (Golden)", "German Shepherd Dogs", "Poodles", "Bulldogs", "Beagles", "Rottweilers"]
    res.send(breeds)
}

function getCatBreeds(event, res) {
    const breeds = ["Ragdoll", "Maine Coon", "Persian", "British Shorthair", "Siamese", "American Shorthair"]
    res.send(breeds)
}

router.get('/v1/breeds/dogs', getDogBreeds);
router.get('/v1/breeds/cats', getCatBreeds);

