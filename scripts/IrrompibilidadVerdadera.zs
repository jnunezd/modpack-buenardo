#priority 10

// Importaciones necesarias
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.MapData;
import crafttweaker.api.ingredient.type.IIngredientList;

// --- Configuración ---

val unbreakableCatalyst = <item:simplyswords:netherfused_gem>;

// Define los items objetivo usando IIngredientList
val targetItems = new IIngredientList([
    <tag:items:elytraslot:elytra>,
    <tag:items:bookshelf:bows>,
    <tag:items:bookshelf:armor>,
    <tag:items:bookshelf:crossbows>,
    <tag:items:bookshelf:shields>,
    <tag:items:simplymore:weapon_types/all>,
    <tag:items:forge:tools>,
    <tag:items:forge:crossbows>,
    <tag:items:forge:wrenches>,
    <tag:items:forge:armors>,
    <item:minecraft:bow>,
    <item:minecraft:crossbow>,
    <item:minecraft:shield>,
    <item:minecraft:carrot_on_a_stick>,
    <item:minecraft:trident>,
    <item:minecraft:elytra>,
    <item:minecraft:shears>,
    <item:minecraft:flint_and_steel>,
    <item:minecraft:fishing_rod>,
    <tag:items:c:weapons>,
    <tag:items:minecraft:trimmable_armor>
]) as IIngredient;

// --- Lógica de la Receta ---

craftingTable.addShapeless(
    "make_unbreakable_crafting",
    <item:minecraft:air>,           // Placeholder de salida
    [targetItems.anyDamage(), unbreakableCatalyst], // Entradas
    (usualOut as IItemStack, inputs as IItemStack[]) => {

        // --- Inicio de la sección modificada ---
        // Reemplazamos .filter() con un bucle 'for' para encontrar el item objetivo

        var toolInput as IItemStack = null; // Inicializamos como ítem vacío

        // Iteramos sobre cada 'stack' en la lista de 'inputs' de la receta
        for stack in inputs {
            // Comprobamos si el stack actual no está vacío Y coincide con nuestro ingrediente 'targetItems'
            if (!stack.isEmpty() && targetItems.matches(stack)) {
                toolInput = stack; // Si coincide, lo guardamos en toolInput
                break; // Salimos del bucle, ya encontramos el primer item que buscábamos
            }
        }

        var outputStack = toolInput.withTag({Unbreakable: 1 as byte});
        return outputStack; // Devolvemos el item modificado
    }
);

// --- Mensaje para el log ---
// Actualizamos el mensaje para reflejar la versión del script
println("CraftTweaker: Receta para hacer items irrompibles añadida (v3 - usando IIngredientList y for loop).");