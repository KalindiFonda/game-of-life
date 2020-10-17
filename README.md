# Game of life

Here we are. The game we all play.


As we got the list of tasks we can work on, Game of Life trapped me.


-----

### Life

They say that these things:

[![here are the birds that fly here and there](birds.gif)](https://www.youtube.com/watch?v=V4f_1_r80RY)

follow very simple rules. And very few rules.
Like, be equidistant from two birds of your choice.
And it makes pretty life

------


### Now with lines and dots



## Rules:

1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by overpopulation.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


[Wikipedia](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)


-----------
## How to run

run with
```
ruby run_life.rb
```

if you want to add size, density & game_len, you can add those in your call:

```
ruby run_life.rb 40 10 200
```

### How does density work

Like a percentage.
10ish and a bit less seems to work best


### walls

They go round the other side.


>> Done while @Makers Academy.