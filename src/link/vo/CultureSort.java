package link.vo;

public class CultureSort implements Comparable<CultureSort> {
	String type;
	Double value; 
	
	
	public CultureSort(String type, Double value) {
		this.type = type;
		this.value = value;
	}

	@Override
	public int compareTo(CultureSort o) {
		return value.compareTo(o.getValue());
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "CultureSort [type=" + type + ", value=" + value + "]";
	}
}
