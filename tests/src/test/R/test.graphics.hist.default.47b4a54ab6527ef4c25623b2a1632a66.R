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

library(hamcrest)

 expected <- structure(list(breaks = c(0x1.9p+6, 0x1.2cp+7, 0x1.9p+7, 0x1.f4p+7, 
0x1.2cp+8, 0x1.5ep+8, 0x1.9p+8, 0x1.c2p+8, 0x1.f4p+8, 0x1.13p+9, 
0x1.2cp+9, 0x1.45p+9), counts = c(24L, 24L, 21L, 13L, 21L, 13L, 
13L, 8L, 4L, 1L, 2L), density = c(0x1.b4e81b4e81b4fp-9, 0x1.b4e81b4e81b4fp-9, 
0x1.7e4b17e4b17e5p-9, 0x1.d950c83fb72eap-10, 0x1.7e4b17e4b17e5p-9, 
0x1.d950c83fb72eap-10, 0x1.d950c83fb72eap-10, 0x1.23456789abcdfp-10, 
0x1.23456789abcdfp-11, 0x1.23456789abcdfp-13, 0x1.23456789abcdfp-12
), mids = c(0x1.f4p+6, 0x1.5ep+7, 0x1.c2p+7, 0x1.13p+8, 0x1.45p+8, 
0x1.77p+8, 0x1.a9p+8, 0x1.dbp+8, 0x1.068p+9, 0x1.1f8p+9, 0x1.388p+9
), xname = "structure(c(112, 118, 132, 129, 121, 135, 148, 148, 136, 119, 104, 118, 115, 126, 141, 135, 125, 149, 170, 170, 158, 133, 114, 140, 145, 150, 178, 163, 172, 178, 199, 199, 184, 162, 146, 166, 171, 180, 193, 181, 183, 218, 230, 242, 209, 191, 172, 194, 196, 196, 236, 235, 229, 243, 264, 272, 237, 211, 180, 201, 204, 188, 235, 227, 234, 264, 302, 293, 259, 229, 203, 229, 242, 233, 267, 269, 270, 315, 364, 347, 312, 274, 237, 278, 284, 277, 317, 313, 318, 374, 413, 405, 355, 306, 271, 306, 315, 301, \n    356, 348, 355, 422, 465, 467, 404, 347, 305, 336, 340, 318, 362, 348, 363, 435, 491, 505, 404, 359, 310, 337, 360, 342, 406, 396, 420, 472, 548, 559, 463, 407, 362, 405, 417, 391, 419, 461, 472, 535, 622, 606, 508, 461, 390, 432), .Tsp = c(1949, 1960.91666666667, 12), class = \"ts\")", 
    equidist = TRUE), .Names = c("breaks", "counts", "density", 
"mids", "xname", "equidist"), class = "histogram") 
 

assertThat(graphics:::hist.default(plot=FALSE,x=structure(c(112, 118, 132, 129, 121, 135, 148, 148, 136, 119, 
104, 118, 115, 126, 141, 135, 125, 149, 170, 170, 158, 133, 114, 
140, 145, 150, 178, 163, 172, 178, 199, 199, 184, 162, 146, 166, 
171, 180, 193, 181, 183, 218, 230, 242, 209, 191, 172, 194, 196, 
196, 236, 235, 229, 243, 264, 272, 237, 211, 180, 201, 204, 188, 
235, 227, 234, 264, 302, 293, 259, 229, 203, 229, 242, 233, 267, 
269, 270, 315, 364, 347, 312, 274, 237, 278, 284, 277, 317, 313, 
318, 374, 413, 405, 355, 306, 271, 306, 315, 301, 356, 348, 355, 
422, 465, 467, 404, 347, 305, 336, 340, 318, 362, 348, 363, 435, 
491, 505, 404, 359, 310, 337, 360, 342, 406, 396, 420, 472, 548, 
559, 463, 407, 362, 405, 417, 391, 419, 461, 472, 535, 622, 606, 
508, 461, 390, 432), .Tsp = c(1949, 1960.91666666667, 12), class = "ts"))[-5]
,  identicalTo( expected[-5] ) )
