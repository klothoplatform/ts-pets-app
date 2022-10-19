/**
 * @klotho::execution_unit {
 *   id = "cats"
 * }
 */

import { set, get, getAllType } from "../../sequelize/model";

export async function getCats(): Promise<string[]> {
    const cat = await getAllType("cat")
    return [...cat]
}

export async function getCat(name: string): Promise<string> {
    const cat = await get(name)
    return cat
}
  
export async function addCat(name: string) {
    await set(name, "cat")
    console.log("Added cat", name)
}
