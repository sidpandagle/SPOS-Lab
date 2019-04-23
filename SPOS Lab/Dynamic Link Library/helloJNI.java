public class helloJNI{
	static{
		System.loadLibrary("hello");
		
	}
	private native int cal(int a,int b);
	private native int sub(int a,int b);
	private native int mul(int a,int b);
	private native int div(int a,int b);
	
	public static void main(String[] args)
	{
		System.out.println("Addition is:"+new helloJNI().cal(5,10));

		System.out.println("Subtraction is:"+new helloJNI().sub(5,10));

		System.out.println("Multiplication is:"+new helloJNI().mul(5,10));

		System.out.println("Division is:"+new helloJNI().div(5,10));		
	}
}
