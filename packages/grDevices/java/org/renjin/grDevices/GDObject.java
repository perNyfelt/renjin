/*

GDObject.java
Java graphics device

Created by Simon Urbanek on Thu Aug 05 2004.
Copyright (c) 2004-2009 Simon Urbanek. All rights reserved.

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation;
version 2.1 of the License.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

*/

package org.renjin.grDevices;

import java.awt.*;

/**
 * GDObject is an arbitrary object that can be painted
 */
public interface GDObject {
  void paint(Component c, GDState gs, Graphics g);
}


