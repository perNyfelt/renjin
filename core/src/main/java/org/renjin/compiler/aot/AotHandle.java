/*
 * Renjin : JVM-based interpreter for the R language for the statistical analysis
 * Copyright © 2010-${$file.lastModified.year} BeDataDriven Groep B.V. and contributors
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, a copy is available at
 *  https://www.gnu.org/licenses/gpl-2.0.txt
 *
 */

package org.renjin.compiler.aot;

import java.lang.reflect.Method;
import java.util.function.Supplier;

public class AotHandle {

  private final String className;
  private final String methodName;
  private final Supplier<Class> flusher;

  public AotHandle(String className, String methodName, Supplier<Class> flusher) {
    this.className = className;
    this.methodName = methodName;
    this.flusher = flusher;
  }


  public Method loadAndReflect() {
    Class loadedClass = flusher.get();
    for (Method method : loadedClass.getMethods()) {
      if(method.getName().equals(methodName)) {
        return method;
      }
    }
    throw new IllegalStateException();
  }
}