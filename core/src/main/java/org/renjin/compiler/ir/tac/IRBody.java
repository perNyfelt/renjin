package org.renjin.compiler.ir.tac;

import com.google.common.base.Strings;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import org.renjin.compiler.ir.tac.statements.Statement;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class IRBody {
  
  private Statement statements[];
  private int labels[];
  
  public IRBody(List<Statement> statements, Map<IRLabel, Integer> labels) {
    this.statements = statements.toArray(new Statement[statements.size()]);
    this.labels = new int[labels.size()];
  
    Arrays.fill(this.labels, -1);
    
    for(Entry<IRLabel,Integer> label : labels.entrySet()) {
      this.labels[label.getKey().getIndex()] = label.getValue();
    }
  }

  public List<Statement> getStatements() {
    return Lists.newArrayList(statements);
  }

  public int getLabelInstructionIndex(IRLabel label) {
    return labels[label.getIndex()];
  }
  
  public Set<IRLabel> getIntructionLabels(int instructionIndex) {
    Set<IRLabel> set = Sets.newHashSet();
    for(int i=0;i!=labels.length;++i) {
      if(labels[i]==instructionIndex) {
        set.add(new IRLabel(i));
      }
    }
    return set;
  }
 
  public boolean isLabeled(int instructionIndex) {
    for(int i=0;i!=labels.length;++i) {
      if(labels[i] == instructionIndex) {
        return true;
      }
    }
    return false;
  }
  
  private String labelAt(int instructionIndex) {
    Set<IRLabel> labels = getIntructionLabels(instructionIndex);
    
    return  labels.isEmpty() ? Strings.repeat(" ", 5) :
      Strings.padEnd(labels.iterator().next().toString(), 5, ' ');
  } 
  
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    for(int i=0;i!=statements.length;++i) {
      appendLineTo(sb, i);
    }
    return sb.toString();
  }

  public void appendLineTo(StringBuilder sb, int i) {
    sb.append(labelAt(i))
      .append(Strings.padEnd(i + ":", 4, ' '))
      .append(statements[i])
      .append("\n");
  }
}
