library(lpSolveAPI)
# Use the Windsor Glass Problem
lprec <- make.lp(0, 2) # number of constraints, number of decision variables
#Defaults to Minimize objective function
set.objfn(lprec, c(-3, -5))
add.constraint(lprec, c(1, 0), "<=", 4)
add.constraint(lprec, c(0, 2), "<=", 12)
add.constraint(lprec, c(3, 2), "<=", 18)
#set.bounds(lprec, lower = c(0, 0), columns = c(1, 2)) #Not really needed
#set.bounds(lprec, upper = 100, columns = 4) If you want to set bounds for a column
RowNames <- c("Plant1", "Plant2", "Plant3")
ColNames <- c("Product1", "Product2")
dimnames(lprec) <- list(RowNames, ColNames)
lprec
# Alternatively, write your model in lp format
write.lp(lprec,'wyndsor_out.lp',type='lp') # we will use this format soon
solve(lprec)
get.objective(lprec) * -1
get.variables(lprec)
get.constraints(lprec)
get.sensitivity.objex(lprec)
get.sensitivity.rhs(lprec)
get.dual.solution(lprec)
#rm(lprec)

# Now, let's use the lp format to imput the model
# See http://lpsolve.sourceforge.net/5.5/index.htm for reference
# Remember to set working directory

x <- read.lp("Wyndsor.lp")
x
solve(x)
get.objective(x)
get.variables(x)
get.constraints(x)
get.sensitivity.objex(x)
get.sensitivity.rhs(x)
get.dual.solution(x)

# Let us solve the dual now

y <- read.lp("Wyndsor_dual.lp")
y
solve(y)
get.objective(y)
get.variables(y)
get.constraints(y)
get.sensitivity.objex(y)
get.sensitivity.rhs(y)
get.dual.solution(y)
