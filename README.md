The next thing that we need to talk about quickly, because that is really quickly done. I usually don't like the default status bar here down there. 
Even though it is okay and it display the most important thing like for example the line number here or where we're in the document as well as the document name and stuff like that. It can be a lot nicer and I'm actually using a quite heavily configured Lua status 
mini statusline is part of a collection of plugins called mini nvim 
oil.nvim is actually something as you might have by now realized, I'm going in and out of VIm structure here

- Today will be about mostly treesitter and treesitter text objects, and what treesitter is, what we can do with it, why we want it and all that kind of stuff
- Treesitter actually is first and foremost in a parse generatorm, treesitter is not specific to nvim (nvim is just using treesitter via an implementation within the nvim core as well as a plugin called nvim treesitter)
- Treesitter is as paror generator which is capable of first of all gernerating really efficient parsers which are quite error tolerant, which a good thing because we need to parse files while we are editing them, and therefore they might not be complete they might be broken at some position at most all of the time, because actually we're editing in them 
- Treesitter actually generates parses that are kind of easy on errors, they can continue or can continue parsing most of the files, even though parts of it are broken. Furthermore, treesitter can generate incremental parses which is quite important as well, because we don't want to always with each change reparse the whole file, but only the changes that we made and we want to keep all the rest 
- All of those languages have those grammar files and something that is called queries, we will see that later on and how we can use that and they are supported by freesitter  
- If you want your system actually to automatically install missing treesitter housers when you opening file, you need the treesitter command line utility as well which you can for example on Mac OS install easily via homebrew

