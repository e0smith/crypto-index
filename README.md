#  Pokédex CLI Project
   Flatiron School Ruby CLI Phase 1 Final Project

## Objective

   Create a CLI using data from an external source (API)

   Use OOP and reduce repetative code
   
   Create a CLI that goes atleast one level deep into a piece of information

## API used for project

   pokeapi - https://pokeapi.co/
   
## Project function
   
   The Pokédex CLI project takes in data from the pokeapi and stores Pokémon objects created from 
   that data into a class variable. The Pokédex allows the user to see the ability(s), name and 
   type(s) to a specified Pokémon. This Pokédex includes the original 151 Pokémon from the first
   generation (which can be modified to include a specified number by changing the 'limit=' in the
   API class url).

## How to use the program

1. Open up the terminal and git clone the project link into your specified directory

2. To open up the program, type 'cd pokedex-project' while within your specified directory

3. To start the program, while within the 'pokedex-project', type 'bin/run' in your terminal.
    If nothing happens for a minute, the project is still functioning. The program is simply
    extracting a large amount of data from the API.

4. Once the pokedex has finished loading, you will be asked to enter in a number that corrosponds 
    to a specific Pokémon. Type in the numer for the Pokémon you wish to see more information about.
    If you input a valid number, you will be asked to retype 'new' and input a new number.

5. Once you are done viewing the information about your Pokémon, type 'new' to select another Pokémon

6. If you would like to exit the program, type 'exit'

