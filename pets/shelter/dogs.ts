/**
 * @klotho::execution_unit {
 *   id = "dogs"
 * }
 */

import { set, get, getAllType } from "../../sequelize/model";

export async function getDogs(): Promise<string[]> {
    const dogs = await getAllType("dog")
    return [...dogs]
}

export async function getDog(name: string): Promise<string> {
    const dog = await get(name)
    return dog
}
  
export async function addDog(name: string) {
    await set(name, "dog")
    console.log("Added dog", name)
}
