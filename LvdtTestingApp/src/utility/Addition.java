package utility;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="addition")
public class Addition {
	
	int number1;
	int number2;
	int ans;
	
	public Addition() {
		super();
	}
	public Addition(int number1, int number2, int ans) {
		super();
		this.number1 = number1;
		this.number2 = number2;
		this.ans = ans;
	}
	public int getNumber1() {
		return number1;
	}
	public void setNumber1(int number1) {
		this.number1 = number1;
	}
	public int getNumber2() {
		return number2;
	}
	public void setNumber2(int number2) {
		this.number2 = number2;
	}
	public int getAns() {
		return ans;
	}
	public void setAns(int ans) {
		this.ans = ans;
	}

}
