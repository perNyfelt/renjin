#
# Renjin : JVM-based interpreter for the R language for the statistical analysis
# Copyright © 2010-2019 BeDataDriven Groep B.V. and contributors
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, a copy is available at
# https://www.gnu.org/licenses/gpl-2.0.txt
#



array <-
function(data = NA, dim = length(data), dimnames = NULL)
{
    data <- as.vector(data)
    dim <- as.integer(dim)
    vl <- prod(dim)
    if(length(data) != vl) {
        if(vl > .Machine$integer.max)
            stop("'dim' specifies too large an array")
        data <- rep(data, length.out=vl)
    }
    if(length(dim))
	dim(data) <- dim
    if(is.list(dimnames) && length(dimnames))
	dimnames(data) <- dimnames
    data
}